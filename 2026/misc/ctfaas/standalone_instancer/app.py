"""
CTFaaS Standalone Instancer - Flask Web Application

Authenticates CTF teams via encrypted tokens, verifies eligibility,
and manages GCP VM instances with IP-restricted firewall rules.
"""

import json
import logging
import os
import sys
import time
from flask import Flask, session, redirect, url_for, request, render_template, flash, jsonify
from flask_limiter import Limiter
from dotenv import load_dotenv

from token_manager import decrypt_token, validate_token_age
from scoreboard_client import fetch_team_data, check_eligibility, ScoreboardAPIError
from recaptcha_client import verify_recaptcha, RecaptchaError
from vm_manager import (
    create_vm_async, delete_vm_async, refresh_vm_async, check_vm_exists, get_cooldown_remaining,
    get_task, clear_task, VMStatus, activate_service_account,
    get_vm_status_cache, set_vm_status_cache, clear_vm_status_cache
)

load_dotenv()

# Configure logging to stderr so output isn't buffered in Docker/Flask
logging.basicConfig(
    stream=sys.stderr,
    level=logging.DEBUG,
    format='[%(asctime)s] %(levelname)s %(name)s: %(message)s',
)
logger = logging.getLogger('app')

app = Flask(__name__)
app.secret_key = os.environ.get('FLASK_SECRET_KEY', 'dev-secret-key-change-me')


REDIS_HOST = os.environ.get('CONF_REDIS_HOST', 'redis')
REDIS_PORT = os.environ.get('CONF_REDIS_PORT', '6379')

def get_rate_limit_key():
    """Get rate limit key based on team_id in session, falling back to IP."""
    if 'team_id' in session:
        return f"team:{session['team_id']}"
    return get_client_ip()


limiter = Limiter(
    app=app,
    key_func=get_rate_limit_key,
    default_limits=[],
    storage_uri=f"redis://{REDIS_HOST}:{REDIS_PORT}",
)


@app.errorhandler(429)
def ratelimit_handler(e):
    """Handle rate limit exceeded errors."""
    flash(f'Rate limit exceeded. {e.description}', 'error')
    return redirect(url_for('dashboard'))

# Configuration
TOKEN_KEY = os.environ.get('TOKEN_KEY', '')
SCOREBOARD_URL = os.environ.get('SCOREBOARD_URL', 'https://platform.acmcyber.com/api/v1')
GCP_PROJECT = os.environ.get('GCP_PROJECT', 'lactf-2026-ctfaas')
GCP_ZONE = os.environ.get('GCP_ZONE', 'us-west4-b')
VM_IMAGE = os.environ.get('VM_IMAGE', 'projects/lactf-2026-ctfaas/global/images/ctfaas-v1')
COOLDOWN_SECONDS = int(os.environ.get('COOLDOWN_SECONDS', '60'))
RECAPTCHA_ENABLED = os.environ.get('RECAPTCHA_ENABLED', 'true').lower() == 'true'
RECAPTCHA_SITE_KEY = os.environ.get('RECAPTCHA_SITE_KEY', '')
RECAPTCHA_SECRET_KEY = os.environ.get('RECAPTCHA_SECRET_KEY', '')

logger.info("Config loaded: PROJECT=%s ZONE=%s IMAGE=%s SCOREBOARD=%s COOLDOWN=%ds TOKEN_KEY=%s",
            GCP_PROJECT, GCP_ZONE, VM_IMAGE, SCOREBOARD_URL, COOLDOWN_SECONDS,
            "set" if TOKEN_KEY else "NOT SET")

if RECAPTCHA_SITE_KEY and RECAPTCHA_SECRET_KEY and not RECAPTCHA_ENABLED:
    logger.warning("reCAPTCHA keys configured but RECAPTCHA_ENABLED=false")


def get_client_ip():
    """Get the client's IP address, handling proxies."""
    if request.headers.get('X-Forwarded-For'):
        return request.headers.get('X-Forwarded-For').split(',')[0].strip()
    return request.remote_addr


def get_cached_vm_status() -> VMStatus:
    """Get VM status from Redis cache."""
    if 'team_id' not in session:
        return VMStatus(exists=False)
    return get_vm_status_cache(session['team_id'])


def set_cached_vm_status(vm_status: VMStatus):
    """Store VM status in Redis cache."""
    if 'team_id' in session:
        set_vm_status_cache(session['team_id'], vm_status)


def clear_cached_vm_status():
    """Clear VM status from Redis cache."""
    if 'team_id' in session:
        clear_vm_status_cache(session['team_id'])


@app.route('/')
def index():
    """Landing page - redirect to dashboard if logged in."""
    if 'team_id' in session:
        return redirect(url_for('dashboard'))
    return render_template('index.html')


@app.route('/login', methods=['GET'])
def login_get():
    """Handle login with token from query parameter."""
    login_key = request.args.get('login_key')
    logger.debug("GET /login login_key=%s", "present" if login_key else "missing")
    if not login_key:
        return render_template('error.html', message='Missing login_key parameter')

    if not TOKEN_KEY:
        logger.error("TOKEN_KEY not configured")
        return render_template('error.html', message='Server configuration error: TOKEN_KEY not set')

    try:
        token_data = decrypt_token(login_key, TOKEN_KEY)
        logger.info("Token decrypted: team=%s name=%s email=%s", token_data.team_id, token_data.name, token_data.email)
    except ValueError:
        logger.warning("Failed to decrypt token")
        return render_template('error.html', message='Invalid or expired token')

    # Check if token is expired
    if not validate_token_age(token_data):
        logger.warning("Token expired for team %s", token_data.team_id)
        return render_template('error.html', message='Error: auth token expired. Please revisit https://platform.lac.tf/challs to get a new unexpired login link.')

    # Show confirmation page with team name
    return render_template('login_confirm.html',
                          team_name=token_data.name,
                          email=token_data.email,
                          token=login_key,
                          recaptcha_site_key=RECAPTCHA_SITE_KEY if RECAPTCHA_ENABLED else None)


@app.route('/login', methods=['POST'])
def login_post():
    """Confirm login and verify eligibility."""
    login_key = request.form.get('token')
    logger.debug("POST /login token=%s", "present" if login_key else "missing")
    if not login_key:
        return render_template('error.html', message='Missing token')

    try:
        token_data = decrypt_token(login_key, TOKEN_KEY)
    except ValueError:
        logger.warning("Failed to decrypt token on POST")
        return render_template('error.html', message='Invalid token')

    # Check if token is expired
    if not validate_token_age(token_data):
        logger.warning("Token expired for team %s on POST", token_data.team_id)
        return render_template('error.html', message='Error: auth token expired. Please revisit https://platform.lac.tf/challs to get a new unexpired login link.')

    # Verify reCAPTCHA if enabled
    if RECAPTCHA_ENABLED:
        if not RECAPTCHA_SECRET_KEY:
            logger.error("RECAPTCHA_SECRET_KEY not configured but RECAPTCHA_ENABLED=true")
            return render_template('error.html', message='Server configuration error')

        recaptcha_response = request.form.get('g-recaptcha-response')
        if not recaptcha_response:
            logger.warning("Missing reCAPTCHA response for team %s", token_data.team_id)
            flash('Please complete the reCAPTCHA verification.', 'error')
            return render_template('login_confirm.html',
                                  team_name=token_data.name,
                                  email=token_data.email,
                                  token=login_key,
                                  recaptcha_site_key=RECAPTCHA_SITE_KEY)

        try:
            client_ip = get_client_ip()
            verify_recaptcha(recaptcha_response, RECAPTCHA_SECRET_KEY, client_ip)
            logger.info("reCAPTCHA verified for team %s from IP %s", token_data.team_id, client_ip)
        except RecaptchaError as e:
            logger.warning("reCAPTCHA verification failed for team %s: %s", token_data.team_id, e)
            flash('reCAPTCHA verification failed. Please try again.', 'error')
            return render_template('login_confirm.html',
                                  team_name=token_data.name,
                                  email=token_data.email,
                                  token=login_key,
                                  recaptcha_site_key=RECAPTCHA_SITE_KEY)

    # Verify eligibility via scoreboard API
    logger.info("Checking eligibility for team %s via %s", token_data.team_id, SCOREBOARD_URL)
    try:
        scoreboard_data = fetch_team_data(token_data.team_id, SCOREBOARD_URL)
        is_eligible, reason = check_eligibility(scoreboard_data)
        logger.info("Eligibility result for team %s: eligible=%s reason=%s", token_data.team_id, is_eligible, reason)
    except ScoreboardAPIError as e:
        logger.error("Scoreboard API error for team %s: %s", token_data.team_id, e)
        return render_template('error.html', message=f'Failed to verify eligibility: {e}')

    if not is_eligible:
        return render_template('error.html',
                              message=f'Not eligible: {reason}')

    # Create session
    session['team_id'] = token_data.team_id
    session['team_name'] = token_data.name
    session['email'] = token_data.email
    session['eligibility_reason'] = reason
    logger.info("Session created for team %s (%s)", token_data.team_id, token_data.name)

    return redirect(url_for('dashboard'))


@app.route('/dashboard')
def dashboard():
    """Show instance status and controls using cached data."""
    if 'team_id' not in session:
        return redirect(url_for('index'))

    team_id = session['team_id']

    # Use cached VM status
    vm_status = get_cached_vm_status()

    # Auto-expire after 33 minutes (1980 seconds)
    if vm_status.exists and vm_status.creation_timestamp:
        age_seconds = time.time() - vm_status.creation_timestamp
        if age_seconds > 1980:
            logger.info("Auto-expiring VM for team %s (age: %d seconds)", team_id, age_seconds)
            if delete_vm_async(team_id, GCP_PROJECT, GCP_ZONE):
                flash('Your instance has expired (30m limit) and is being deleted.', 'info')
                return redirect(url_for('dashboard'))

    cooldown = get_cooldown_remaining(team_id, COOLDOWN_SECONDS)
    client_ip = get_client_ip()

    # Calculate time since last refresh
    last_refresh_ago = None
    if vm_status.last_refresh:
        last_refresh_ago = int(time.time() - vm_status.last_refresh)

    # Check if there's an active task (create or delete)
    task = get_task(team_id)
    task_active = task is not None and task.get("status") not in ("done", "error", None)
    task_message = task.get("message") if task else None
    task_type = task.get("task_type", "create") if task else None

    return render_template('dashboard.html',
                          team_name=session['team_name'],
                          vm_status=vm_status,
                          cooldown=cooldown,
                          last_refresh_ago=last_refresh_ago,
                          client_ip=client_ip,
                          task_active=task_active,
                          task_message=task_message,
                          task_type=task_type,
                          recaptcha_site_key=RECAPTCHA_SITE_KEY if RECAPTCHA_ENABLED else None)


@app.route('/instance/create', methods=['POST'])
def instance_create():
    """Create a new VM instance."""
    if 'team_id' not in session:
        return redirect(url_for('index'))

    team_id = session['team_id']
    client_ip = get_client_ip()
    logger.info("POST /instance/create team=%s client_ip=%s", team_id, client_ip)

    # Verify reCAPTCHA if enabled
    if RECAPTCHA_ENABLED:
        if not RECAPTCHA_SECRET_KEY:
            logger.error("RECAPTCHA_SECRET_KEY not configured but RECAPTCHA_ENABLED=true")
            flash('Server configuration error', 'error')
            return redirect(url_for('dashboard'))

        recaptcha_response = request.form.get('g-recaptcha-response')
        if not recaptcha_response:
            logger.warning("Missing reCAPTCHA response for team %s on instance create", team_id)
            flash('Please complete the reCAPTCHA verification before creating an instance.', 'error')
            return redirect(url_for('dashboard'))

        try:
            verify_recaptcha(recaptcha_response, RECAPTCHA_SECRET_KEY, client_ip)
            logger.info("reCAPTCHA verified for team %s instance creation from IP %s", team_id, client_ip)
        except RecaptchaError as e:
            logger.warning("reCAPTCHA verification failed for team %s instance creation: %s", team_id, e)
            flash('reCAPTCHA verification failed. Please try again.', 'error')
            return redirect(url_for('dashboard'))

    # Check cooldown
    cooldown = get_cooldown_remaining(team_id, COOLDOWN_SECONDS)
    if cooldown > 0:
        logger.debug("Team %s on cooldown (%ds remaining)", team_id, cooldown)
        flash(f'Please wait {cooldown} seconds before creating a new instance.', 'error')
        return redirect(url_for('dashboard'))

    # Check cached status first
    cached_status = get_cached_vm_status()
    if cached_status.exists:
        logger.debug("Team %s already has cached VM", team_id)
        flash('An instance already exists for your team. Use refresh to check current status.', 'error')
        return redirect(url_for('dashboard'))

    # Launch async creation
    logger.info("Creating VM (async) for team %s from IP %s", team_id, client_ip)
    if not create_vm_async(team_id, client_ip, GCP_PROJECT, GCP_ZONE, VM_IMAGE):
        flash('Instance creation already in progress.', 'error')

    return redirect(url_for('dashboard'))


@app.route('/instance/refresh', methods=['POST'])
@limiter.limit("1 per 30 seconds")
def instance_refresh():
    """Refresh VM status from GCP (rate-limited to once per 30 seconds)."""
    if 'team_id' not in session:
        return redirect(url_for('index'))

    team_id = session['team_id']
    logger.info("POST /instance/refresh team=%s", team_id)

    # Launch async refresh
    if refresh_vm_async(team_id, GCP_PROJECT, GCP_ZONE):
        flash('Status refresh started.', 'success')
    else:
        flash('Refresh already in progress.', 'info')
        
    return redirect(url_for('dashboard'))


@app.route('/instance/status')
def instance_status():
    """JSON endpoint for polling task progress."""
    if 'team_id' not in session:
        return jsonify({"error": "not authenticated"}), 401

    team_id = session['team_id']
    task = get_task(team_id)

    if task is None:
        return jsonify({"active": False})

    active = task.get("status") not in ("done", "error")
    task_type = task.get("task_type", "create")
    response = {
        "active": active,
        "status": task.get("status"),
        "message": task.get("message"),
        "task_type": task_type,
    }

    if task.get("status") == "done" and task.get("success") == "true":
        response["success"] = True
        if task_type == "create":
            vm_status_json = task.get("vm_status_json")
            if vm_status_json:
                vm_status_dict = json.loads(vm_status_json)
                response["vm_status"] = vm_status_dict
                # Cache is already updated by the async worker
        elif task_type == "delete":
            # Cache is already cleared by the async worker
            pass
        clear_task(team_id)
    elif task.get("status") == "error":
        response["success"] = False
        response["error_message"] = task.get("error_message")
        clear_task(team_id)

    return jsonify(response)


@app.route('/instance/delete', methods=['POST'])
def instance_delete():
    """Delete the VM instance (async)."""
    if 'team_id' not in session:
        return redirect(url_for('index'))

    team_id = session['team_id']
    logger.info("POST /instance/delete team=%s", team_id)

    if not delete_vm_async(team_id, GCP_PROJECT, GCP_ZONE):
        flash('An operation is already in progress.', 'error')

    return redirect(url_for('dashboard'))


@app.route('/logout', methods=['POST'])
def logout():
    """Clear session and logout."""
    logger.info("POST /logout team=%s", session.get('team_id', 'unknown'))
    session.clear()
    return redirect(url_for('index'))

activate_service_account()

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=os.environ.get('FLASK_DEBUG', 'false').lower() == 'true')
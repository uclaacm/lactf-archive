"""
GCP VM management using gcloud CLI.
"""

import json
import logging
import os
import re
import subprocess
import sys
import threading
import time
from datetime import datetime
from dataclasses import dataclass, asdict
from typing import Optional

import redis
import requests

# Configure logging to stderr with flush so output isn't buffered in Docker/Flask
logging.basicConfig(
    stream=sys.stderr,
    level=logging.DEBUG,
    format='[%(asctime)s] %(levelname)s %(name)s: %(message)s',
)
logger = logging.getLogger('vm_manager')

REDIS_HOST = os.environ.get('CONF_REDIS_HOST', 'redis')
REDIS_PORT = int(os.environ.get('CONF_REDIS_PORT', '6379'))
COOLDOWN_SECONDS = int(os.environ.get('COOLDOWN_SECONDS', '60'))
redis_client = redis.Redis(host=REDIS_HOST, port=REDIS_PORT, decode_responses=True)


def activate_service_account():
    """Activate gcloud CLI auth using GOOGLE_APPLICATION_CREDENTIALS if set."""
    creds_path = os.environ.get('GOOGLE_APPLICATION_CREDENTIALS')
    if not creds_path:
        logger.debug("GOOGLE_APPLICATION_CREDENTIALS not set, using default gcloud auth")
        return
    logger.info("Activating service account from %s", creds_path)
    if not os.path.isfile(creds_path):
        raise RuntimeError(f"Service account key not found: {creds_path}")
    result = subprocess.run(
        ["gcloud", "auth", "activate-service-account", f"--key-file={creds_path}"],
        capture_output=True, text=True, timeout=30
    )
    if result.returncode != 0:
        raise RuntimeError(f"Failed to activate service account: {result.stderr}")
    logger.info("Service account activated successfully")



# --- Task state helpers (stored in Redis) ---

def get_task(team_uuid: str) -> Optional[dict]:
    """Get current task state from Redis. Returns None if no task exists."""
    data = redis_client.hgetall(f"task:{team_uuid}")
    return data if data else None


def clear_task(team_uuid: str):
    """Remove a completed task from Redis."""
    redis_client.delete(f"task:{team_uuid}")


def _set_task(team_uuid: str, status: str, message: str, task_expiry: int = 60, **extra):
    """Set task state in Redis with 5-minute TTL."""
    key = f"task:{team_uuid}"
    mapping = {"status": status, "message": message, **extra}
    redis_client.hset(key, mapping=mapping)
    redis_client.expire(key, task_expiry)


@dataclass
class VMStatus:
    """VM status information."""
    exists: bool
    status: Optional[str] = None
    external_ip: Optional[str] = None
    locked_ip: Optional[str] = None
    last_refresh: Optional[float] = None
    creation_timestamp: Optional[float] = None

    def to_dict(self) -> dict:
        """Convert to dictionary for session storage."""
        return asdict(self)

    @classmethod
    def from_dict(cls, data: dict) -> 'VMStatus':
        """Create from dictionary (session storage)."""
        return cls(
            exists=data.get('exists', False),
            status=data.get('status'),
            external_ip=data.get('external_ip'),
            locked_ip=data.get('locked_ip'),
            last_refresh=data.get('last_refresh'),
            creation_timestamp=data.get('creation_timestamp')
        )


def _validate_uuid(uuid: str) -> bool:
    """Validate UUID format to prevent command injection."""
    pattern = r'^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$'
    return bool(re.match(pattern, uuid.lower()))


def _validate_ip(ip: str) -> bool:
    """Validate IPv4 address format."""
    pattern = r'^(\d{1,3}\.){3}\d{1,3}$'
    if not re.match(pattern, ip):
        return False
    parts = ip.split('.')
    return all(0 <= int(p) <= 255 for p in parts)


def generate_vm_name(team_uuid: str) -> str:
    """Generate VM name from team UUID."""
    return f"ctfaas-{team_uuid}"


def generate_firewall_name_for_ip(ip: str) -> str:
    """Generate firewall rule name from IP address (e.g., ctfaas-127-0-0-1)."""
    return f"ctfaas-{ip.replace('.', '-')}"


def get_cooldown_remaining(team_uuid: str, cooldown_seconds: int) -> int:
    """
    Get remaining cooldown time for a team (delete cooldown).

    Args:
        team_uuid: Team's UUID
        cooldown_seconds: Cooldown duration in seconds (unused, TTL is set at creation)

    Returns:
        Remaining cooldown seconds, or 0 if no cooldown active
    """
    ttl = redis_client.ttl(f"cooldown:{team_uuid}")
    return max(ttl, 0)


def _set_cooldown(team_uuid: str):
    """Set delete cooldown for a team using Redis TTL."""
    redis_client.setex(f"cooldown:{team_uuid}", COOLDOWN_SECONDS, "1")


# --- VM Status Caching (Redis) ---

def get_vm_status_cache(team_uuid: str) -> VMStatus:
    """Get VM status from Redis cache."""
    data = redis_client.get(f"vm_status:{team_uuid}")
    if not data:
        return VMStatus(exists=False)
    try:
        return VMStatus.from_dict(json.loads(data))
    except (json.JSONDecodeError, TypeError):
        return VMStatus(exists=False)


def set_vm_status_cache(team_uuid: str, vm_status: VMStatus):
    """Store VM status in Redis cache (24h TTL)."""
    redis_client.setex(
        f"vm_status:{team_uuid}",
        86400,  # 24 hours
        json.dumps(vm_status.to_dict())
    )


def clear_vm_status_cache(team_uuid: str):
    """Clear VM status from Redis cache."""
    redis_client.delete(f"vm_status:{team_uuid}")


def _ensure_firewall_exists(user_ip: str, project: str) -> bool:
    """
    Ensure a firewall rule exists for the given IP. Creates it if it doesn't exist.

    Args:
        user_ip: User's IPv4 address
        project: GCP project ID

    Returns:
        True if firewall exists or was created successfully, False otherwise
    """
    firewall_name = generate_firewall_name_for_ip(user_ip)
    logger.debug("Checking firewall rule %s for IP %s", firewall_name, user_ip)

    # Check if firewall rule already exists
    check_cmd = [
        "gcloud", "compute", "firewall-rules", "describe", firewall_name,
        f"--project={project}",
        "--format=json"
    ]

    try:
        result = subprocess.run(check_cmd, capture_output=True, text=True, timeout=30)
        if result.returncode == 0:
            logger.debug("Firewall rule %s already exists", firewall_name)
            return True
    except subprocess.TimeoutExpired:
        logger.error("Timeout checking firewall rule %s", firewall_name)
        return False

    logger.info("Creating ingress firewall rule %s for %s/32", firewall_name, user_ip)
    # Create firewall rule for ingress
    create_ingress_cmd = [
        "gcloud", "compute", "firewall-rules", "create", firewall_name,
        f"--project={project}",
        "--direction=INGRESS",
        "--action=ALLOW",
        "--rules=all",
        f"--source-ranges={user_ip}/32",
        f"--target-tags={firewall_name}",
        "--format=json"
    ]

    try:
        result = subprocess.run(create_ingress_cmd, capture_output=True, text=True, timeout=60)
        if result.returncode != 0:
            logger.error("Failed to create ingress firewall: %s", result.stderr)
            return False
        logger.debug("Ingress firewall rule created")
    except subprocess.TimeoutExpired:
        logger.error("Timeout creating ingress firewall rule %s", firewall_name)
        return False

    # Create firewall rule for egress
    egress_rule_name = f"{firewall_name}-egress"
    logger.info("Creating egress firewall rule %s", egress_rule_name)
    create_egress_cmd = [
        "gcloud", "compute", "firewall-rules", "create", egress_rule_name,
        f"--project={project}",
        "--direction=EGRESS",
        "--action=ALLOW",
        "--rules=all",
        f"--destination-ranges={user_ip}/32",
        f"--target-tags={firewall_name}",
        "--format=json",
        "--priority=1001"
    ]

    try:
        result = subprocess.run(create_egress_cmd, capture_output=True, text=True, timeout=60)
        if result.returncode == 0:
            logger.debug("Egress firewall rule created")
        else:
            logger.error("Failed to create egress firewall: %s", result.stderr)
        return result.returncode == 0
    except subprocess.TimeoutExpired:
        logger.error("Timeout creating egress firewall rule %s", egress_rule_name)
        return False


def create_vm(team_uuid: str, user_ip: str, project: str, zone: str, image: str,
              progress_callback=None) -> dict:
    """
    Create a GCP VM with firewall rule restricting access to user's IP.

    Args:
        team_uuid: Team's UUID (used in VM name)
        user_ip: User's IPv4 address for firewall rule
        project: GCP project ID
        zone: GCP zone
        image: VM image path
        progress_callback: Optional callable(status, message) for progress reporting

    Returns:
        dict with success status, message, external_ip, and vm_status if successful
    """
    def _report(status, message, **kwargs):
        if progress_callback:
            progress_callback(status, message, **kwargs)

    logger.info("create_vm called: team=%s ip=%s project=%s zone=%s image=%s", team_uuid, user_ip, project, zone, image)

    _report("validating", "Validating inputs...")

    if not _validate_uuid(team_uuid):
        logger.warning("Invalid UUID format: %s", team_uuid)
        return {"success": False, "message": "Invalid team UUID format"}

    if not _validate_ip(user_ip):
        logger.warning("Invalid IP format: %s", user_ip)
        return {"success": False, "message": "Invalid IP address format"}

    vm_name = generate_vm_name(team_uuid)
    firewall_name = generate_firewall_name_for_ip(user_ip)

    # Ensure firewall rule exists for this IP
    _report("network", "Setting up network access...")
    if not _ensure_firewall_exists(user_ip, project):
        logger.error("Failed to ensure firewall for IP %s", user_ip)
        return {"success": False, "message": "Failed to create/verify firewall rule"}

    _report("creating_vm", "Deploying instance...", task_expiry=240)
    logger.info("Creating VM %s with image %s", vm_name, image)
    # Create VM with the IP-based firewall tag
    vm_cmd = [
        "gcloud", "compute", "instances", "create", vm_name,
        f"--project={project}",
        f"--zone={zone}",
        "--machine-type=e2-medium",
        "--network-interface=network-tier=STANDARD,stack-type=IPV4_ONLY,subnet=default",
        "--no-restart-on-failure",
        "--maintenance-policy=TERMINATE",
        "--provisioning-model=SPOT",
        "--instance-termination-action=DELETE",
        "--max-run-duration=1980s",
        "--no-service-account",
        "--no-scopes",
        f"--tags={firewall_name},deny-all",
        f"--create-disk=auto-delete=yes,boot=yes,device-name={vm_name},image={image},mode=rw,size=10,type=pd-standard",
        "--shielded-vtpm",
        "--shielded-integrity-monitoring",
        "--reservation-affinity=none",
        "--format=json"
    ]

    logger.debug("gcloud command: %s", " ".join(vm_cmd))

    try:
        result = subprocess.run(vm_cmd, capture_output=True, text=True, timeout=180)
        logger.debug("gcloud stdout: %s", result.stdout[:500] if result.stdout else "(empty)")
        logger.debug("gcloud stderr: %s", result.stderr[:500] if result.stderr else "(empty)")
        if result.returncode != 0:
            error_msg = result.stderr or result.stdout
            logger.error("VM creation failed (rc=%d): %s", result.returncode, error_msg)
            if "already exists" in error_msg.lower():
                # Force refresh VM status to get current state
                vm_status = check_vm_exists(team_uuid, project, zone)
                set_vm_status_cache(team_uuid, vm_status)
                return {
                    "success": False, 
                    "message": "Instance already exists for your team",
                    "vm_status": vm_status.to_dict()
                }
            return {"success": False, "message": f"VM creation failed for an unknown reason. Please try again, and if this error continues, contact support."}

        vm_data = json.loads(result.stdout)
        external_ip = None
        if vm_data and len(vm_data) > 0:
            network_interfaces = vm_data[0].get("networkInterfaces", [])
            if network_interfaces:
                access_configs = network_interfaces[0].get("accessConfigs", [])
                if access_configs:
                    external_ip = access_configs[0].get("natIP")

        logger.info("VM %s created, external_ip=%s", vm_name, external_ip)

        # Wait for server to finish booting (e.g., K3s startup)
        _report("booting", "Waiting for server to finish booting (this takes 2-3 minutes)...")
    

        # Wait for server to finish booting by polling localhost:30000 via SSH
        logger.info("Polling VM for service readiness on port 30000...")
        max_attempts = 60  # 60 attempts = ~5 minutes with 5s sleep
        attempt = 0
        service_ready = False
        
        while attempt < max_attempts and not service_ready:
            attempt += 1
            logger.debug("Service check attempt %d/%d", attempt, max_attempts)
            
            # SSH into the VM and try to curl localhost:30000
            ssh_cmd = [
            "gcloud", "compute", "ssh", f"ctfaas@{vm_name}",
            f"--project={project}",
            f"--zone={zone}",
            "--command=curl -s http://localhost:30000 --connect-timeout 5 --max-time 10",
            "--strict-host-key-checking=no",
            "--quiet"
            ]
            
            try:
                result = subprocess.run(ssh_cmd, capture_output=True, text=True, timeout=15)
                # Check if we got a successful response with "Deploy Your Challenge" in the output
                if result.returncode == 0 and "Deploy Your Challenge" in result.stdout:
                    logger.info("Service is ready on port 30000 (found 'Deploy Your Challenge')")
                    service_ready = True
                else:
                    logger.debug("Service not ready yet (rc=%d, output length=%d)", result.returncode, len(result.stdout))
                    time.sleep(5)
                    _report("booting", f"Waiting for server to finish booting (this may take 2-3 minutes) (check attempt {attempt})...")

            except subprocess.TimeoutExpired:
                logger.debug("SSH/curl command timed out on attempt %d", attempt)
                time.sleep(5)
            except Exception as e:
                logger.warning("Error during service check attempt %d: %s", attempt, e)
                time.sleep(5)
        
        if not service_ready:
            logger.warning("Service did not become ready after %d attempts, proceeding anyway", max_attempts)

    except subprocess.TimeoutExpired:
        logger.error("VM creation timed out for %s", vm_name)
        return {"success": False, "message": "VM creation timed out"}
    except json.JSONDecodeError:
        logger.error("Failed to parse VM creation JSON response: %s", result.stdout[:200] if result.stdout else "(empty)")
        return {"success": False, "message": "Failed to parse VM creation response"}

    # Create VMStatus for session caching
    vm_status = VMStatus(
        exists=True,
        status="RUNNING",
        external_ip=external_ip,
        locked_ip=user_ip,
        last_refresh=time.time(),
        creation_timestamp=time.time()
    )

    return {
        "success": True,
        "message": "Instance created successfully",
        "external_ip": external_ip,
        "locked_ip": user_ip,
        "vm_status": vm_status.to_dict()
    }


def check_vm_exists(team_uuid: str, project: str, zone: str) -> VMStatus:
    """
    Check if VM exists and get its status. Makes GCP API calls.

    Args:
        team_uuid: Team's UUID
        project: GCP project ID
        zone: GCP zone

    Returns:
        VMStatus with existence, status, and external IP
    """
    logger.info("check_vm_exists called: team=%s project=%s zone=%s", team_uuid, project, zone)

    if not _validate_uuid(team_uuid):
        logger.warning("Invalid UUID format: %s", team_uuid)
        return VMStatus(exists=False, last_refresh=time.time())

    vm_name = generate_vm_name(team_uuid)

    cmd = [
        "gcloud", "compute", "instances", "describe", vm_name,
        f"--project={project}",
        f"--zone={zone}",
        "--format=json"
    ]

    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=30)
        if result.returncode != 0:
            logger.debug("VM %s not found (rc=%d): %s", vm_name, result.returncode, result.stderr[:200] if result.stderr else "")
            return VMStatus(exists=False, last_refresh=time.time())

        data = json.loads(result.stdout)
        status = data.get("status", "UNKNOWN")

        external_ip = None
        network_interfaces = data.get("networkInterfaces", [])
        if network_interfaces:
            access_configs = network_interfaces[0].get("accessConfigs", [])
            if access_configs:
                external_ip = access_configs[0].get("natIP")

        # Get locked IP from VM tags (firewall rule name format: ctfaas-X-X-X-X)
        locked_ip = None
        tags = data.get("tags", {}).get("items", [])
        for tag in tags:
            if tag.startswith("ctfaas-") and tag != vm_name:
                # Convert tag back to IP: ctfaas-127-0-0-1 -> 127.0.0.1
                ip_part = tag.replace("ctfaas-", "")
                locked_ip = ip_part.replace("-", ".")
                break
        
        # Get creation timestamp
        creation_timestamp = None
        creation_ts_str = data.get("creationTimestamp")
        if creation_ts_str:
            try:
                # Format example: 2024-02-12T10:20:30.123-08:00
                # We can use datetime.fromisoformat() which handles offsets in recent Python
                dt = datetime.fromisoformat(creation_ts_str)
                creation_timestamp = dt.timestamp()
            except Exception as e:
                logger.warning("Failed to parse creationTimestamp '%s': %s", creation_ts_str, e)

        logger.info("VM %s exists: status=%s ip=%s locked_ip=%s creation=%s", vm_name, status, external_ip, locked_ip, creation_timestamp)
        return VMStatus(
            exists=True,
            status=status,
            external_ip=external_ip,
            locked_ip=locked_ip,
            last_refresh=time.time(),
            creation_timestamp=creation_timestamp
        )

    except subprocess.TimeoutExpired:
        logger.error("Timeout checking VM %s", vm_name)
        return VMStatus(exists=False, last_refresh=time.time())
    except json.JSONDecodeError:
        logger.error("Failed to parse describe response for VM %s", vm_name)
        return VMStatus(exists=False, last_refresh=time.time())


def delete_vm_only(team_uuid: str, project: str, zone: str) -> dict:
    """Delete only the VM (used for rollback)."""
    vm_name = generate_vm_name(team_uuid)
    logger.info("delete_vm_only: deleting VM %s", vm_name)

    cmd = [
        "gcloud", "compute", "instances", "delete", vm_name,
        f"--project={project}",
        f"--zone={zone}",
        "--quiet"
    ]

    try:
        result = subprocess.run(cmd, capture_output=True, text=True, timeout=120)
        logger.debug("delete_vm_only rc=%d stderr=%s", result.returncode, result.stderr[:200] if result.stderr else "")
        return {"success": result.returncode == 0}
    except subprocess.TimeoutExpired:
        logger.error("Timeout deleting VM %s", vm_name)
        return {"success": False}


def delete_vm(team_uuid: str, project: str, zone: str, progress_callback=None) -> dict:
    """
    Delete a VM. Firewall rules are reused and not deleted.

    Args:
        team_uuid: Team's UUID
        project: GCP project ID
        zone: GCP zone
        progress_callback: Optional callable(status, message) for progress reporting

    Returns:
        dict with success status and message
    """
    def _report(status, message, **kwargs):
        if progress_callback:
            progress_callback(status, message, **kwargs)

    logger.info("delete_vm called: team=%s project=%s zone=%s", team_uuid, project, zone)

    _report("validating", "Validating request...")

    if not _validate_uuid(team_uuid):
        logger.warning("Invalid UUID format: %s", team_uuid)
        return {"success": False, "message": "Invalid team UUID format"}

    vm_name = generate_vm_name(team_uuid)

    _report("deleting", "Terminating instance...", task_expiry=150)

    # Delete VM only (firewall rules are reused across teams with same IP)
    vm_cmd = [
        "gcloud", "compute", "instances", "delete", vm_name,
        f"--project={project}",
        f"--zone={zone}",
        "--quiet"
    ]

    try:
        result = subprocess.run(vm_cmd, capture_output=True, text=True, timeout=120)
        logger.debug("delete_vm rc=%d stderr=%s", result.returncode, result.stderr[:200] if result.stderr else "")
        if result.returncode != 0 and "not found" not in result.stderr.lower():
            logger.error("VM deletion failed for %s: %s", vm_name, result.stderr)
            return {"success": False, "message": f"VM deletion failed. Please try again, and if this error continues, contact support."}
    except subprocess.TimeoutExpired:
        logger.error("Timeout deleting VM %s", vm_name)
        return {"success": False, "message": "VM deletion timed out"}

    # Set cooldown after deletion
    _report("cooldown", "Setting cooldown timer...")
    _set_cooldown(team_uuid)

    logger.info("VM %s deleted successfully, cooldown set", vm_name)
    return {"success": True, "message": "Instance deleted successfully"}


def create_vm_async(team_uuid: str, user_ip: str, project: str, zone: str, image: str) -> bool:
    """
    Launch create_vm in a background thread with progress reporting via Redis.

    Returns True if the task was started, False if one is already running.
    """
    # Check if a task is already in progress
    existing = get_task(team_uuid)
    if existing and existing.get("status") not in ("done", "error"):
        return False

    # Initialize task state in Redis
    _set_task(team_uuid, "pending", "Initializing...", task_type="create")

    def _run():
        try:
            def _progress(status, message, **kwargs):
                _set_task(team_uuid, status, message, task_type="create", **kwargs)

            result = create_vm(team_uuid, user_ip, project, zone, image,
                               progress_callback=_progress)
            if result["success"]:
                # Cache the new status immediately
                vm_status = result.get("vm_status")
                if vm_status:
                     # vm_status is a dict in the result, but set_vm_status_cache expects a VMStatus object if we strictly followed typing,
                     # but wait, let's check create_vm return.
                     # create_vm returns: "vm_status": vm_status.to_dict() which is a dict.
                     # set_vm_status_cache expects VMStatus object.
                     set_vm_status_cache(team_uuid, VMStatus.from_dict(vm_status))

                _set_task(team_uuid, "done", "Instance ready!",
                          task_type="create", success="true",
                          vm_status_json=json.dumps(result["vm_status"]))
            else:
                _set_task(team_uuid, "error", f"Failed: {result['message']}",
                          task_type="create", success="false",
                          error_message=result["message"])
        except Exception as e:
            logger.exception("Unexpected error in async create_vm for team %s", team_uuid)
            _set_task(team_uuid, "error", f"Unexpected error: {str(e)[:200]}",
                      task_type="create", success="false",
                      error_message=str(e)[:200])

    thread = threading.Thread(target=_run, daemon=True)
    thread.start()
    return True


def delete_vm_async(team_uuid: str, project: str, zone: str) -> bool:
    """
    Launch delete_vm in a background thread with progress reporting via Redis.

    Returns True if the task was started, False if one is already running.
    """
    existing = get_task(team_uuid)
    if existing and existing.get("status") not in ("done", "error"):
        return False

    _set_task(team_uuid, "pending", "Initializing...", task_type="delete")

    def _run():
        try:
            def _progress(status, message, **kwargs):
                _set_task(team_uuid, status, message, task_type="delete", **kwargs)

            result = delete_vm(team_uuid, project, zone, progress_callback=_progress)
            if result["success"]:
                clear_vm_status_cache(team_uuid)
                _set_task(team_uuid, "done", "Instance deleted.",
                          task_type="delete", success="true")
            else:
                _set_task(team_uuid, "error", f"Failed: {result['message']}",
                          task_type="delete", success="false",
                          error_message=result["message"])
        except Exception as e:
            logger.exception("Unexpected error in async delete_vm for team %s", team_uuid)
            _set_task(team_uuid, "error", f"Unexpected error: {str(e)[:200]}",
                      task_type="delete", success="false",
                      error_message=str(e)[:200])

    thread = threading.Thread(target=_run, daemon=True)
    thread.start()
    return True


def refresh_vm_async(team_uuid: str, project: str, zone: str) -> bool:
    """
    Launch check_vm_exists in a background thread with progress reporting via Redis.

    Returns True if the task was started, False if one is already running.
    """
    existing = get_task(team_uuid)
    if existing and existing.get("status") not in ("done", "error"):
        return False

    _set_task(team_uuid, "pending", "Refreshing status...", task_type="refresh")

    def _run():
        try:
            # We don't really need intermediate progress for refresh, just do it
            _set_task(team_uuid, "running", "Updating status...", task_type="refresh")
            
            vm_status = check_vm_exists(team_uuid, project, zone)
            set_vm_status_cache(team_uuid, vm_status)
            
            _set_task(team_uuid, "done", "Status updated.",
                      task_type="refresh", success="true")

        except Exception as e:
            logger.exception("Unexpected error in async refresh_vm for team %s", team_uuid)
            _set_task(team_uuid, "error", f"Unexpected error: {str(e)[:200]}",
                      task_type="refresh", success="false",
                      error_message=str(e)[:200])

    thread = threading.Thread(target=_run, daemon=True)
    thread.start()
    return True

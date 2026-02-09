import os
import uuid
import subprocess
import logging
from flask import Flask, request, render_template_string, flash, redirect, url_for, Response
from kubernetes import client, config
from werkzeug.utils import secure_filename

app = Flask(__name__)
app.secret_key = os.environ.get('FLASK_SECRET_KEY', 'receiver-secret-key-change-me')
logging.basicConfig(level=logging.INFO)

# Configuration
REGISTRY_HOST = "registry.default.svc.cluster.local:5000"
UPLOAD_FOLDER = "/tmp/uploads"
os.makedirs(UPLOAD_FOLDER, exist_ok=True)

# HTML Template (Simplified: No Tag Input)
TEMPLATE = """
<!DOCTYPE html>
<html>
<head>
    <title>CTF Challenge Deployer</title>
    <style>
        body { font-family: sans-serif; max-width: 1000px; margin: 40px auto; padding: 20px; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input[type="text"], input[type="number"], input[type="file"] { width: 100%; padding: 8px; }
        button { background: #007bff; color: white; padding: 10px 20px; border: none; cursor: pointer; border-radius: 4px; }
        .delete-btn { background: #dc3545; padding: 5px 10px; font-size: 12px; }
        .logs-btn { background: #6c757d; padding: 5px 10px; font-size: 12px; color: white; text-decoration: none; border-radius: 4px; }
        .result { background: #f0f0f0; padding: 15px; border-radius: 5px; margin-top: 20px; }
        .alert { padding: 15px; border-radius: 5px; margin-bottom: 20px; border: 1px solid transparent; }
        .alert-success { background: #d4edda; color: #155724; border-color: #c3e6cb; }
        .alert-error { background: #f8d7da; color: #721c24; border-color: #f5c6cb; }
        code { background: #e0e0e0; padding: 2px 5px; border-radius: 3px; }
        .deployments { margin-top: 30px; }
        .deployment-item { background: #f8f9fa; padding: 15px; margin-bottom: 10px; border-radius: 5px; border: 1px solid #dee2e6; }
        .deployment-header { display: flex; justify-content: space-between; align-items: center; margin-bottom: 10px; }
        .deployment-info { font-size: 14px; color: #666; }
        .status-ready { color: #28a745; font-weight: bold; }
        .status-not-ready { color: #ffc107; font-weight: bold; }
        .action-btns { display: flex; gap: 5px; }
    </style>
</head>
<body>
    <h1>🚀 Deploy Your Challenge</h1>
    <p>Upload a docker image tarball (exported via <code>docker save -o image.tar my-image</code>).</p>
    
    {% with messages = get_flashed_messages(with_categories=true) %}
      {% if messages %}
        {% for category, message in messages %}
          <div class="alert alert-{{ category }}">{{ message | safe }}</div>
        {% endfor %}
      {% endif %}
    {% endwith %}

    <form action="/deploy" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>Docker Image Tarball:</label>
            <input type="file" name="file" required>
        </div>
        <div class="form-group">
            <label>Container Port to Expose:</label>
            <input type="number" name="port" value="80" required>
        </div>
        <button type="submit">Deploy Challenge</button>
    </form>

    {% if deployments is none %}
    <div class="deployments">
        <h2>📋 Existing Deployments</h2>
        <p style="color: #dc3545; font-weight: bold;">⚠️ unable to contact cluster - is the machine overloaded?</p>
    </div>
    {% elif deployments %}
    <div class="deployments">
        <h2>📋 Existing Deployments</h2>
        {% for deployment in deployments %}
        <div class="deployment-item">
            <div class="deployment-header">
                <strong>Challenge ID: <code>{{ deployment.challenge_id }}</code></strong>
                <div class="action-btns">
                    <a href="/logs/{{ deployment.challenge_id }}" class="logs-btn">📜 Logs</a>
                    <form method="post" action="/delete/{{ deployment.challenge_id }}" style="display: inline;" 
                          onsubmit="return confirm('Are you sure you want to delete this deployment?')">
                        <button type="submit" class="delete-btn">🗑️ Delete</button>
                    </form>
                </div>
            </div>
            <div class="deployment-info">
                <strong>Namespace:</strong> <code>{{ deployment.namespace }}</code><br>
                <strong>Image Tag:</strong> <code>{{ deployment.image_tag }}</code><br>
                <strong>Created:</strong> {{ deployment.created }}<br>
                <strong>Status:</strong> 
                <span class="{% if deployment.status == 'Ready' %}status-ready{% else %}status-not-ready{% endif %}">
                    {{ deployment.status }}
                </span><br>
                {% if deployment.node_port %}
                <strong>Access:</strong> <a href="http://{{ host_ip }}:{{ deployment.node_port }}" target="_blank">http://{{ host_ip }}:{{ deployment.node_port }}</a>
                {% endif %}
            </div>
        </div>
        {% endfor %}
    </div>
    {% else %}
    <div class="deployments">
        <h2>📋 Existing Deployments</h2>
        <p>No deployments found.</p>
    </div>
    {% endif %}
</body>
</html>
"""

def get_k8s_api():
    try:
        if os.getenv('KUBERNETES_SERVICE_HOST'):
            config.load_incluster_config()
        else:
            config.load_kube_config()
    except Exception as e:
        logging.error(f"Failed to load Kubernetes config: {e}")
        raise
    return client.CoreV1Api(), client.AppsV1Api()

def get_existing_deployments():
    """Get all existing deployments in default namespace with label app=challenge"""
    try:
        api_core, api_apps = get_k8s_api()
        deployments = []
        
        # List deployments in default namespace
        deps = api_apps.list_namespaced_deployment(namespace="default", label_selector="app=challenge")
        
        for dep in deps.items:
            try:
                challenge_id = dep.metadata.name.replace('challenge-', '')
                service_name = f"challenge-svc-{challenge_id}"
                
                # Get service to find NodePort
                node_port = None
                try:
                    svc = api_core.read_namespaced_service(name=service_name, namespace="default")
                    if svc.spec.type == "NodePort" and svc.spec.ports:
                        node_port = svc.spec.ports[0].node_port
                except Exception:
                    pass
                
                # Get Image Tag
                image_tag = "Unknown"
                if dep.spec.template.spec.containers:
                    image_tag = dep.spec.template.spec.containers[0].image

                deployment_info = {
                    'namespace': "default",
                    'challenge_id': challenge_id,
                    'image_tag': image_tag,
                    'created': dep.metadata.creation_timestamp.strftime('%Y-%m-%d %H:%M:%S'),
                    'node_port': node_port,
                    'status': 'Ready' if dep.status.ready_replicas else 'Not Ready'
                }
                deployments.append(deployment_info)
            except Exception as e:
                logging.warning(f"Error getting info for deployment {dep.metadata.name}: {e}")
                continue
        
        return sorted(deployments, key=lambda x: x['created'], reverse=True)
    except Exception as e:
        logging.error(f"Error listing deployments: {e}")
        return None

@app.route('/', methods=['GET'])
def index():
    deployments = get_existing_deployments()
    host_ip = request.host.split(':')[0]
    return render_template_string(TEMPLATE, deployments=deployments, host_ip=host_ip)

@app.route('/deploy', methods=['POST'])
def deploy():
    if 'file' not in request.files:
        flash("No file part", "error")
        return redirect(url_for('index'))
    
    file = request.files['file']
    port_val = request.form.get('port', 80)
    try:
        port = int(port_val)
    except ValueError:
        flash("❌ Error: Invalid port number", "error")
        return redirect(url_for('index'))
    
    if file.filename == '':
        flash("No selected file", "error")
        return redirect(url_for('index'))

    # 1. Generate Random IDs
    challenge_id = uuid.uuid4().hex[:8]
    generated_tag = f"challenge-{challenge_id}:latest"
    namespace = "default"
    
    # 2. Save the Tarball
    filename = secure_filename(file.filename)
    filepath = os.path.join(UPLOAD_FOLDER, filename)
    file.save(filepath)

    try:
        # 3. Push to Internal Registry using Skopeo
        target_image = f"{REGISTRY_HOST}/{generated_tag}"
        logging.info(f"Pushing {filepath} to {target_image}...")
        
        cmd = [
            "skopeo", "copy",
            "--insecure-policy",       # Don't check signatures
            "--dest-tls-verify=false", # Internal registry is HTTP
            f"docker-archive:{filepath}",
            f"docker://{target_image}"
        ]
        
        result = subprocess.run(cmd, capture_output=True, text=True)
        if result.returncode != 0:
            raise Exception(f"Registry Push Failed: {result.stderr}")

        # 4. Create Namespace (Skipped - using default)
        api_core, api_apps = get_k8s_api()
        
        # Get Registry ClusterIP
        try:
            registry_svc = api_core.read_namespaced_service(name="registry", namespace="default")
            registry_ip = registry_svc.spec.cluster_ip
        except Exception as e:
            raise Exception(f"Could not find registry service: {e}")

        # 5. Create Deployment
        deployment_name = f"challenge-{challenge_id}"
        # The node needs to pull from the Registry ClusterIP because it can't resolve the cluster DNS
        # and NodePort might not be available.
        pull_image = f"{registry_ip}:5000/{generated_tag}"
        
        deployment = client.V1Deployment(
            metadata=client.V1ObjectMeta(name=deployment_name, labels={"app": "challenge"}),
            spec=client.V1DeploymentSpec(
                replicas=1,
                selector=client.V1LabelSelector(match_labels={"app": "challenge", "challenge_id": challenge_id}),
                template=client.V1PodTemplateSpec(
                    metadata=client.V1ObjectMeta(labels={"app": "challenge", "challenge_id": challenge_id}),
                    spec=client.V1PodSpec(
                        service_account_name="ctf-app",
                        automount_service_account_token=True,
                        containers=[
                            client.V1Container(
                                name="main",
                                image=pull_image,
                                ports=[client.V1ContainerPort(container_port=port)]
                            )
                        ]
                    )
                )
            )
        )
        api_apps.create_namespaced_deployment(namespace=namespace, body=deployment)

        # 6. Create NodePort Service
        service_name = f"challenge-svc-{challenge_id}"
        service = client.V1Service(
            metadata=client.V1ObjectMeta(name=service_name, labels={"app": "challenge"}),
            spec=client.V1ServiceSpec(
                selector={"app": "challenge", "challenge_id": challenge_id},
                type="NodePort",
                ports=[client.V1ServicePort(port=port, target_port=port)]
            )
        )
        svc_response = api_core.create_namespaced_service(namespace=namespace, body=service)
        node_port = svc_response.spec.ports[0].node_port

        host_ip = request.host.split(':')[0]
        msg = f"""
        ✅ <strong>Success!</strong><br>
        <strong>Image Tag:</strong> <code>{pull_image}</code><br>
        <strong>Namespace:</strong> <code>{namespace}</code><br>
        <strong>Access:</strong> <a href="http://{host_ip}:{node_port}" target="_blank">http://{host_ip}:{node_port}</a>
        """
        flash(msg, "success")
        return redirect(url_for('index'))

    except Exception as e:
        logging.error(e)
        flash(f"❌ Error: {str(e)}", "error")
        return redirect(url_for('index'))
    finally:
        if os.path.exists(filepath):
            os.remove(filepath)

@app.route('/delete/<challenge_id>', methods=['POST'])
def delete_deployment(challenge_id):
    try:
        api_core, api_apps = get_k8s_api()
        deployment_name = f"challenge-{challenge_id}"
        service_name = f"challenge-svc-{challenge_id}"
        
        # Delete deployment and service
        try:
            api_apps.delete_namespaced_deployment(name=deployment_name, namespace="default")
        except Exception:
            pass # Maybe already deleted
            
        try:
            api_core.delete_namespaced_service(name=service_name, namespace="default")
        except Exception:
            pass

        flash(f"✅ <strong>Success!</strong> Deployment <code>{challenge_id}</code> has been deleted.", "success")
        return redirect(url_for('index'))
    except Exception as e:
        logging.error(f"Error deleting deployment {challenge_id}: {e}")
        flash(f"❌ Error deleting deployment: {str(e)}", "error")
        return redirect(url_for('index'))

@app.route('/logs/<challenge_id>')
def get_logs(challenge_id):
    try:
        api_core, _ = get_k8s_api()
        pod_list = api_core.list_namespaced_pod(namespace="default", label_selector=f"challenge_id={challenge_id}")
        
        if not pod_list.items:
            return "No pods found for this challenge.", 404
        
        pod_name = pod_list.items[0].metadata.name
        logs = api_core.read_namespaced_pod_log(name=pod_name, namespace="default")
        
        return Response(logs, mimetype='text/plain')
    except Exception as e:
        logging.error(f"Error getting logs for {challenge_id}: {e}")
        return f"Error getting logs: {str(e)}", 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
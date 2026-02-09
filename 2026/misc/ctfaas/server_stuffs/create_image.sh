#!/bin/bash
set -e

# Configuration
PROJECT_ID="lactf-2026-ctfaas"
ZONE="us-west4-b"
INSTANCE_NAME="ctfaas-image-builder"
IMAGE_NAME="ctfaas-v1"
MACHINE_TYPE="e2-standard-4"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Function to run gcloud commands with project/zone
gcloud_cmd() {
    gcloud "$@" --project="$PROJECT_ID" --zone="$ZONE"
}

echo "🚀 Starting CTFaaS Custom Image Creation..."

# 1. Create VM Instance
echo "Creating VM instance '$INSTANCE_NAME'..."
gcloud_cmd compute instances create "$INSTANCE_NAME" \
    --machine-type="$MACHINE_TYPE" \
    --provisioning-model=SPOT \
    --image-project=debian-cloud \
    --image-family=debian-12 \
    --boot-disk-size=10GB

# 2. Wait for SSH
echo "Waiting for SSH to become available..."
# Retry loop for SSH
for i in {1..30}; do
    if gcloud_cmd compute ssh "$INSTANCE_NAME" --command="echo SSH ready" 2>/dev/null; then
        echo "SSH is ready."
        break
    fi
    echo "Waiting for SSH... ($i/30)"
    sleep 5
done

# 3. Copy files
echo "Copying configuration files..."
gcloud_cmd compute scp "$SCRIPT_DIR/config.yaml" "$INSTANCE_NAME":/tmp/config.yaml
gcloud_cmd compute scp "$SCRIPT_DIR/registries.yaml" "$INSTANCE_NAME":/tmp/registries.yaml
gcloud_cmd compute scp "$SCRIPT_DIR/chall-manifest.yaml" "$INSTANCE_NAME":/tmp/chall-manifest.yaml
gcloud_cmd compute scp "$SCRIPT_DIR/shutdown.sh" "$INSTANCE_NAME":/tmp/shutdown.sh

# 4. Configure VM and Install K3s
echo "Configuring VM and installing K3s..."
gcloud_cmd compute ssh "$INSTANCE_NAME" --command="
    set -e
    
    # Move config to correct location
    sudo mkdir -p /etc/rancher/k3s
    sudo mv /tmp/config.yaml /etc/rancher/k3s/config.yaml
    sudo mv /tmp/registries.yaml /etc/rancher/k3s/registries.yaml
    sudo chown root:root /etc/rancher/k3s/config.yaml
    sudo chown root:root /etc/rancher/k3s/registries.yaml

    # Install K3s
    echo 'Installing K3s...'
    curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644

    # Wait for K3s to be ready
    echo 'Waiting for K3s to be ready...'
    while ! sudo kubectl get nodes; do
        sleep 2
    done

    # Apply Challenge Manifest
    echo 'Applying Challenge Manifest...'
    sudo kubectl apply -f /tmp/chall-manifest.yaml

    # Confirm registry and deployer is running
    echo 'Confirming web server is on...'
    sudo kubectl rollout status deployment/ctf-deployer --timeout=60s

    echo 'Confirming registry is ready...'
    sudo kubectl rollout status deployment/registry --timeout=60s

    echo 'Waiting a bit for services to be fully up...'
    sleep 60

    curl -sfI http://localhost:30000 >/dev/null 2>&1 || (echo 'Web server not responding')

    # Cleanup Manifest
    rm /tmp/chall-manifest.yaml
    
    # Run Shutdown Script (clean logs, etc.)
    chmod +x /tmp/shutdown.sh
    sudo /tmp/shutdown.sh
"

# 5. Stop Instance
echo "Stopping instance..."
gcloud_cmd compute instances stop "$INSTANCE_NAME"

# 6. Delete Old Image
echo "Deleting old image '$IMAGE_NAME'..."
gcloud compute images delete "$IMAGE_NAME" --project="$PROJECT_ID" --quiet || echo "Image did not exist or delete failed (ignoring)."

# 7. Create New Image
echo "Creating new image '$IMAGE_NAME'..."
gcloud compute images create "$IMAGE_NAME" \
    --source-disk="$INSTANCE_NAME" \
    --source-disk-zone="$ZONE" \
    --storage-location=us \
    --project="$PROJECT_ID"

# 8. Cleanup Instance
echo "Deleting builder instance..."
gcloud_cmd compute instances delete "$INSTANCE_NAME" --quiet

echo "✅ Custom image '$IMAGE_NAME' created successfully!"

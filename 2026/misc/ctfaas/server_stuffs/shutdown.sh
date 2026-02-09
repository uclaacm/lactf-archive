#!/bin/bash
set -e

echo "Stopping K3s..."
systemctl stop k3s

echo "Cleaning up node-specific TLS metadata..."
# Deleting this file forces the 'dynamic listener' to re-evaluate the node's IP 
# and regenerate the serving certificate with the NEW IP on next boot.
rm -f /var/lib/rancher/k3s/server/tls/dynamic-cert.json

echo "Cleaning up CNI generated networks..."
# This prevents IP conflicts with the old network overlay
rm -rf /var/lib/cni/
rm -rf /var/lib/kubelet/cni/

echo "Truncating logs..."
truncate -s 0 /var/log/syslog
truncate -s 0 /var/log/kern.log

echo "Ready for shutdown. You can now power off and snapshot."

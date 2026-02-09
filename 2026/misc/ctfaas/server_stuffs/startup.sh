#!/bin/bash
set -e

# Stop K3s
systemctl stop k3s

# Rotate certificates
k3s certificate rotate

# Start K3s
systemctl start k3s
#!/bin/bash

# Join the Kubernetes cluster
if [ -f /vagrant/join.sh ]; then
  bash /vagrant/join.sh
else
  echo "Join command not found! Ensure the control plane is properly initialized."
fi

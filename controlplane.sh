#!/bin/bash

# Initialize the Kubernetes control plane
sudo kubeadm init --pod-network-cidr=192.168.56.0/24

# Configure kubectl for the vagrant user
mkdir -p $HOME/.kube
sudo cp /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# Install Calico network plugin
kubectl apply -f https://docs.projectcalico.org/manifests/calico.yaml

# Save the join command to a shared file
kubeadm token create --print-join-command > /vagrant/join.sh

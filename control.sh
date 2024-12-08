#!/bin/bash
#control-plane
sudo kubeadm init --apiserver-advertise-address=192.168.56.100 --pod-network-cidr=10.244.0.0/16
#sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --ignore-preflight-errors=NumCPU

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
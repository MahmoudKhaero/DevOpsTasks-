#!/bin/bash
sudo kubeadm reset -f
sudo rm -rf ~/.kube
sudo rm -rf /etc/kubernetes/
sudo rm -rf /var/lib/etcd/
sudo rm -rf /etc/cni/
sudo rm -rf /run/flannel

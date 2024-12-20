#!/bin/bash
#control-plane
sudo kubeadm init --apiserver-advertise-address=10.0.2.100 --pod-network-cidr=10.244.0.0/16  --ignore-preflight-errors=all
#sudo kubeadm init --pod-network-cidr=10.244.0.0/16 --ignore-preflight-errors=NumCPU

mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

#flannel
#kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml
#calico
#kubectl apply -f https://raw.githubusercontent.com/projectcalico/calico/master/manifests/calico.yaml

#kubelet ip config
#sudo /usr/bin/kubelet --node-ip=10.0.2.102 --kubeconfig=/etc/kubernetes/kubelet.conf --config=/var/lib/kubelet/config.yaml
#sudo nano /usr/lib/systemd/system/kubelet.service.d/10-kubeadm.conf
#Environment="KUBELET_EXTRA_ARGS=--node-ip=10.0.2.102"
#sudo systemctl daemon-reload
#sudo systemctl restart kubelet



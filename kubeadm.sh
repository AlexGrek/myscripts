#!/bin/bash

sudo kubeadm init --pod-network-cidr=10.244.0.0/16 | tee kubeadminit.txt
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

echo "Loading..."
sleep 20s
kubectl get pods --all-namespaces || exit 1

echo ">>>>>>>>>>>>>>> Deploying flannel..."
sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml || exit 1

kubectl get pods --all-namespaces

grep join kubeadminit.txt
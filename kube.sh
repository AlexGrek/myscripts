#!/bin/bash

apt update
apt install -y docker.io curl vim
systemctl enable --now docker

curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add
apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
apt install -y kubeadm kubelet kubectl

swapoff -a
echo "All installed! Remove swap if exists:"
echo "sudo vim /etc/fstab"

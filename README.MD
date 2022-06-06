# How do I install kubernetes

## Installation (any node)

- sudo ssh.sh (if needed)
- sudo kube.sh

# Setup cluster (admin node)

- kubeadm.sh (with sudo, so run sudo before)
- mkdir -p $HOME/.kube
- sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
- sudo chown $(id -u):$(id -g) $HOME/.kube/config
- flannel.sh
- pvc.sh

To enable master node to be worker node also (*works only in old versions*):

- kubectl taint nodes --all node-role.kubernetes.io/master-

## Resetting cluster

Use `/reset` directory.

- sudo_reset01.sh
- sudo_reset_iptables.sh
- sudo_reset03.sh
- rm -rf ~/.kube

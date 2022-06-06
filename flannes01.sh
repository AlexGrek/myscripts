#!/bin/bash

echo ">>>>>>>>>>>>>>> Deploying flannel..."
sudo kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml || exit 1

kubectl get pods --all-namespaces

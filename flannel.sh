#!/bin/bash

echo ">>>>>>>>>>>>>>> Deploying flannel (don't run as sudo)..."
kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml || exit 1

kubectl get pods --all-namespaces

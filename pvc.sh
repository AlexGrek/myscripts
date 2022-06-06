#!/bin/bash

kubectl apply -f https://raw.githubusercontent.com/rancher/local-path-provisioner/v0.0.22/deploy/local-path-storage.yaml || exit 1

echo "wait till it's up"
sleep 10s
kubectl create -f https://raw.githubusercontent.com/rancher/local-path-provisioner/master/examples/pvc/pvc.yaml || exit 1

echo "new PVC created"
sleep 5s
kubectl patch storageclass local-path -p '{"metadata": {"annotations": {"storageclass.kubernetes.io/is-default-class":"true"}}}' || exit 1
echo "PVC patched to be default"

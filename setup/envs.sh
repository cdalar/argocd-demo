#!/bin/bash
export KUBECONFIG=$PWD/k3s.yaml
kubectl get po -A
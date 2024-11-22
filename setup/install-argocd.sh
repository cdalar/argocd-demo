#!/bin/bash
set -ex 
# Install ArgoCD
kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
kubectl apply -f argocd-cmd-params-cm.yaml
kubectl -n argocd delete po -lapp.kubernetes.io/name=argocd-server 
#kubectl patch svc argocd-server -n argocd -p '{"spec": {"type": "NodePort"}}'

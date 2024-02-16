#!/usr/bin/env bash
project_id=my_project
cluster_name=cluster-1
version=1

image=eu.gcr.io/${project_id}/${cluster_name}-nodejs-mini-server:${version}
docker build -t ${image} .
gcloud docker -- push ${image}
kubectl apply -f kubernetes.yaml

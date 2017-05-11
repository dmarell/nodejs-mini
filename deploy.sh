#!/usr/bin/env bash
image=eu.gcr.io/<project-id>/<cluster-name>-nodejs-mini-server:1
docker build -t ${image} .
gcloud docker -- push ${image}
kubectl apply -f kubernetes.yaml

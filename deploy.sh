image=eu.gcr.io/caglabs-155116/cluster-1-nodejs-mini-server:1
docker build -t ${image} .
gcloud docker -- push ${image}
kubectl --namespace=nodejs-mini apply -f kubernetes.yaml
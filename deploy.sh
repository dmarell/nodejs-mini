image=eu.gcr.io/<YOUR GCR PROJECT NAME>/cluster-1-nodejs-mini-server:1
docker build -t ${image} .
gcloud docker -- push ${image}
kubectl apply -f kubernetes.yaml

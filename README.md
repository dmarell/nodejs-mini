# Tiny Node.js app

Includes Docker and Kubernetes config. For use in pipeline lab.
```
$ npm install
$ npm start
```

Check that it is up:
```
$ curl localhost:9090
{"message":"node-mini API"}
```

## Deploy
Fill in actual names in `deploy.sh` and `kubernetes.yaml` and run: `bash deploy.sh`.

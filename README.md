# Tiny Node.js app

Includes Docker and Kubernetes config. For use in pipeline lab.

Build with:
```
$ npm install
```

Run with:
```
$ npm start
```

Check that it is up:
```
$ curl localhost:9090
{"message":"node-mini API"}
```

## Deployig
Before you can deploy this to the cloud you must change the image name
in `deploy.sh` and `kubernetes.yaml` to correspond to the name of the CER
to which you are deploying.

After you have fixed the image name you can rebuild the project by running
`./deploy.sh`.

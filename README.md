# incidents-registration-app

This app is used to demonstrate Continuous Deployment circle with Concouce CI and Cloud Foundry.

### How to install

```
fly set-pipeline -t tutorial -c pipeline/continuous-deployment.yml -p continuous-deployment --load-vars-from pipeline/stub.yml

fly intercept -j continuous-deployment/unit-tests -b 5

fly set-pipeline -c pipeline/continuous-deployment.yml --load-vars-from pipeline/stub.yml -p continuous-deployment
```


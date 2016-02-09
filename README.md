# incidents-registration-app

This app is used to demonstrate Continuous Deployment circle with Concouce CI and Cloud Foundry.

### How to install

```
fly set-pipeline -t tutorial -c pipeline/continuous-deployment.yml -p continuous-deployment --load-vars-from pipeline/stub.yml

fly intercept --check continuous-deployment/unit-tests   # to ssh to container while it is running

fly set-pipeline -c pipeline/continuous-deployment.yml --load-vars-from pipeline/stub.yml -p continuous-deployment 

```

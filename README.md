# incidents-registration-app

This app is used to demonstrate Continuous Deployment circle with Concouce CI and Cloud Foundry.

### How to install

```
fly set-pipeline -t altoros -c pipeline/continuous-deployment.yml -p continuous-deployment --load-vars-from pipeline/stub.yml

fly -t altoros intercept -j continuous-deployment/unit-tests

fly -t altoros set-pipeline -c pipeline/continuous-deployment.yml --load-vars-from pipeline/stub.yml -p continuous-deployment
```

### How to add slack notifications

use this [steps](https://github.com/starkandwayne/flowdock-concourse-notification-resource)

```
vagrant ssh # to concourse-lite
vi /var/vcap/jobs/groundcrew/config/worker.json
# add ,{"image":"docker:///allomov/slack-notification-resource","type":"slack-notification"}
monit restart beacon
```


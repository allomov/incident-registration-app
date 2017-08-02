# incidents-registration-app

This app is used to demonstrate Continuous Deployment circle with Concouce CI and Cloud Foundry.

### How to install

```
fly set-pipeline -t lite -c ci/pipeline.yml -p deploy-dev --load-vars-from ci/stub.yml

fly -t lite unpause-pipeline -p deploy-dev
fly -t lite intercept -j deploy-dev/unit-tests

fly -t lite set-pipeline -c ci/pipeline.yml --load-vars-from ci/stub.yml -p deploy-dev
```

### How to add slack notifications

use this [steps](https://github.com/starkandwayne/flowdock-concourse-notification-resource)

```
vagrant ssh # to concourse-lite
vi /var/vcap/jobs/groundcrew/config/worker.json
# add ,{"image":"docker:///allomov/slack-notification-resource","type":"slack-notification"}
monit restart beacon
```



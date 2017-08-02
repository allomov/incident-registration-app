# incidents-registration-app

This app is used to demonstrate Continuous Deployment circle with Concouce CI and Cloud Foundry.

### How to install

```
fly set-pipeline -t lite -c ci/pipeline.yml -p incident-app-dev --load-vars-from ci/stub.yml
fly -t lite unpause continuous-deployment

fly -t lite intercept -j continuous-deployment/unit-tests

fly -t lite set-pipeline -c ci/pipeline.yml --load-vars-from ci/stub.yml -p continuous-deployment
```

### How to add slack notifications

use this [steps](https://github.com/starkandwayne/flowdock-concourse-notification-resource)

```
vagrant ssh # to concourse-lite
vi /var/vcap/jobs/groundcrew/config/worker.json
# add ,{"image":"docker:///allomov/slack-notification-resource","type":"slack-notification"}
monit restart beacon
```



## Part 1
- Project overview: In this project we still using dockerhub and GitHub action to make a workflow when a tag is pushed and triggers the workflow.
- How to generate a tag in git / Github: Use command git tag -a v*** and push origin with the tag name just created.
- Behavior of GitHub workflow: This workflow uses tags to determine the version of the Docker image to be built and pushed to Docker Hub. Specifically, it uses the docker/metadata-action action to extract the major and minor version numbers from the tag name. These tags are then used in the docker/build-push-action action to tag the Docker image that is built and pushed to Docker Hub.
- Link to dockerHub: https://hub.docker.com/repository/docker/weichen66/ceg3120/general

## Part 2
- How to install Docker to your instance: sudo apt install docker
- Container restart script
  - Justification & description of what it does: The restart script runs and carries out the setup before begins executing the application and it helps automate the restarting of containers.
  - Where it should be on the instance (if someone were to use your setup): It should be located on the instance where container runs on, specifially it should loacated on home directory of the instance.
- Setting up a `webhook` on the instance
  - How to install [adnanh's `webhook`](https://github.com/adnanh/webhook) to the instance: sudo apt-get install webhook
  - How to start the `webhook`: sudo systemctl restart webhook
- `webhook` task definition file
  - Description of what it does: It specifies the options and configuration for a container that is intended to receive webhook events.
  - Where it should be on the instance (if someone were to use your setup): It should stored in /etc.
- How to configure GitHub OR DockerHub to message the listener: In your repository setting, click on Webhooks and add webhook, then enter payload URL for listener finally select the events for which you want to receive nitifiations.


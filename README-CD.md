## Part 1
- Project overview: In this project we still using dockerhub and GitHub action to make a workflow when a tag is pushed and triggers the workflow.
- How to generate a tag in git / Github: Use command git tag -a v*** and push origin with the tag name just created.
- Behavior of GitHub workflow: This workflow uses tags to determine the version of the Docker image to be built and pushed to Docker Hub. Specifically, it uses the docker/metadata-action action to extract the major and minor version numbers from the tag name. These tags are then used in the docker/build-push-action action to tag the Docker image that is built and pushed to Docker Hub.
- Link to dockerHub: https://hub.docker.com/repository/docker/weichen66/ceg3120/general

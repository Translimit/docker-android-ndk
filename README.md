# docker-android-ndk

This repository contains Dockerfile to create Docker images containing Android SDK, Android NDK and ccache.

In order to pre-install Android SDK, Docker image is based on [runmymind/docker-android-sdk](https://hub.docker.com/r/runmymind/docker-android-sdk/) .


## Using AWS CodeBuild

This repoisitory also supports AWS CodeBuild to push the Docker image to your image repository in Amazon ECR.

To run AWS CodeBuild, please refer to the following document.

[https://docs.aws.amazon.com/codebuild/latest/userguide/sample-ecr.html](https://docs.aws.amazon.com/codebuild/latest/userguide/sample-ecr.html)





















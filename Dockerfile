FROM runmymind/docker-android-sdk:latest

# update android-sdk
RUN su - android -c "/opt/android-sdk-linux/tools/bin/sdkmanager 'build-tools;27.0.2' 'platforms;android-27'"

# install android-ndk
ARG ANDROID_NDK_VERSION=r17b
ENV ANDROID_NDK_HOME /opt/android-ndk-${ANDROID_NDK_VERSION}
ENV NDK_ROOT $ANDROID_NDK_HOME

RUN wget -q https://dl.google.com/android/repository/android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
    unzip android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
    rm android-ndk-${ANDROID_NDK_VERSION}-linux-x86_64.zip && \
    mv android-ndk-${ANDROID_NDK_VERSION} ${ANDROID_NDK_HOME}

ENV PATH $PATH:$ANDROID_NDK_HOME

# install ccache
RUN apt-get update
RUN apt-get install -y build-essential ccache

ENV NDK_CCACHE $(which ccache)

# install Python
RUN apt-get install -y python python-pip libssl-dev

# install zip
RUN apt-get install -y zip

# install nfs-common
RUN apt-get install -y nfs-common

# install awscli
RUN pip install awscli


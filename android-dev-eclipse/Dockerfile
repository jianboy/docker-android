FROM ubuntu:18.10

ENV ANDROID_COMPILE_SDK 25
ENV VERSION_SDK_TOOLS 3859397
ENV ANDROID_HOME "/sdk"
ENV PATH "${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools"

RUN sed -i "s|http://archive.ubuntu.com|http://mirrors.aliyun.com|g" /etc/apt/sources.list && apt-get -y update

RUN apt-get install -qqy --no-install-recommends \
    curl unzip lib32stdc++6 lib32z1 lib32ncurses5 lib32gcc1 lib32stdc++6 libc6-i386 html2text openjdk-8-jdk \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# download android-sdk
RUN curl -s -o sdk-tools.zip https://dl.google.com/android/repository/sdk-tools-linux-${VERSION_SDK_TOOLS}.zip && \
    unzip /sdk-tools.zip -d /sdk && rm -v /sdk-tools.zip

RUN mkdir -p $ANDROID_HOME/licenses/ && \
    echo "8933bad161af4178b1185d1a37fbf41ea5269c55\nd56f5187479451eabf01fb78af6dfcb131a6481e" > $ANDROID_HOME/licenses/android-sdk-license && \
    echo "84831b9409646a918e30573bab4c9c91346d8abd" > $ANDROID_HOME/licenses/android-sdk-preview-license

# Upadte sdkmanager
RUN mkdir -p /root/.android && \
    touch /root/.android/repositories.cfg && \
    sdkmanager --update

CMD ["/bin/bash" ,"-c" ,"while true;do echo hello docker;sleep 1;done"]
FROM ubuntu:18.10

WORKDIR /root/aosp

RUN sed -i "s|http://archive.ubuntu.com|http://mirrors.aliyun.com|g" /etc/apt/sources.list && apt-get -y update

RUN apt-get install -y git-core gnupg flex bison gperf build-essential zip curl zlib1g-dev \ 
gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev \ 
lib32z-dev libgl1-mesa-dev libxml2-utils xsltproc unzip openjdk-7-jdk python	

VOLUME [ "/root/aosp" ]

CMD ["/bin/bash" ,"-c" ,"while true;do echo hello docker;sleep 1;done"]
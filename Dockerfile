FROM ubuntu:14.04
MAINTAINER Admatic Engineering Team@ADMATIC.IN
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
# Default jdk
RUN apt-get install -y default-jdk
# 32-bit dependencies of android and utils    
RUN apt-get install -y \
    bison \
    git \
    gperf \
    lib32gcc1 \
    lib32bz2-1.0 \
    lib32ncurses5 \
    lib32stdc++6 \
    lib32z1 \
    libc6-i386 \
    libxml2-utils \
    make \
    zip
# Download and unzip Android Studio for Linux
ADD  https://redirector.gvt1.com/edgedl/android/studio/ide-zips/4.0.1.0/android-studio-ide-193.6626763-linux.tar.gz /opt/android-studio.tar.gz
RUN cd /opt/ && tar -xvf android-studio.tar.gz && rm android-studio.tar.gz
CMD /opt/android-studio/bin/studio.sh

FROM ubuntu:21.10

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u312-b07/OpenJDK8U-jre_x64_linux_hotspot_8u312b07.tar.gz
RUN tar x -f OpenJDK8U-jre_x64_linux_hotspot_8u312b07.tar.gz && rm OpenJDK8U-jre_x64_linux_hotspot_8u312b07.tar.gz && mv jdk8u312-b07-jre Temurin

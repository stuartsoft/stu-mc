FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.1%2B12/OpenJDK17U-jre_x64_linux_hotspot_17.0.1_12.tar.gz --output-document=openjdk17.tar.gz
RUN tar x -f openjdk17.tar.gz && rm openjdk17.tar.gz && mv jdk-17.0.1+12-jre Temurin
RUN ln -s /Temurin/bin/java /usr/local/bin/java
RUN wget https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar --output-document=mc.jar
RUN mkdir mcdata
ENTRYPOINT cd /mcdata && java -Xmx8192M -Xms1024M -jar /mc.jar nogui
FROM ubuntu:22.04

RUN apt-get update
RUN apt-get install wget -y
RUN wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.6%2B10/OpenJDK17U-jre_x64_linux_hotspot_17.0.6_10.tar.gz --output-document=openjre17.tar.gz
RUN tar x -f openjre17.tar.gz && rm openjre17.tar.gz && mv jdk-17.0.6+10-jre Temurin
RUN ln -s /Temurin/bin/java /usr/local/bin/java
RUN wget https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar --output-document=mc.jar
RUN mkdir mcdata
ENTRYPOINT cd /mcdata && java -Xmx8192M -Xms1024M -jar /mc.jar nogui
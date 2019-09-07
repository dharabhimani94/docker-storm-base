FROM ubuntu:trusty
MAINTAINER Wurstmeister 
RUN apt-get update; apt-get install -y unzip openjdk-12-jre-headless wget supervisor docker.io openssh-server
ENV JAVA_HOME /usr/lib/jvm/java-12-openjdk-amd64/
RUN echo 'root:wurstmeister' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config

EXPOSE 22

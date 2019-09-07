FROM  picoded/ubuntu-openjdk-8-jdk
MAINTAINER Wurstmeister 
RUN apt-get update; apt-get install -y unzip wget supervisor docker.io openssh-server
RUN echo 'root:wurstmeister' | chpasswd
RUN mkdir /var/run/sshd
RUN sed -i 's/PermitRootLogin without-password/PermitRootLogin yes/' /etc/ssh/sshd_config
CMD java -version
EXPOSE 22

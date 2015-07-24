#
# Java Dockerfile
#
# https://github.com/dockerize/java
#

# Pull base image
FROM dockerize/ubuntu

MAINTAINER Dockerize "http://dockerize.github.io"

# Install Oracle Java JDK 8
RUN add-apt-repository ppa:webupd8team/java
RUN apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
RUN apt-get install -y oracle-java8-installer
RUN update-java-alternatives -s java-8-oracle
RUN apt-get install -y oracle-java8-set-default

ENV JAVA_HOME /usr/lib/jvm/java-8-oracle/

# Define mountable directories.
VOLUME ["/data"]

# Define working directory.
WORKDIR /data

# Define default command.
CMD ["bash"]

FROM tronprotocol/centos7-jdk8
MAINTAINER polfilm

# Install dependencies && Download java-tron
RUN yum -y update
RUN yum install -y git
RUN git clone -b develop https://github.com/tronprotocol/java-tron.git /home/java-tron

# Change work directory
WORKDIR /home/java-tron

RUN ./gradlew run --stacktrace --debug

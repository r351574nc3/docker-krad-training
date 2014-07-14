FROM fedora:latest

MAINTAINER Leo Przybylski https://github.com/r351574nc3/
 
RUN yum update -y
RUN yum install -y wget

RUN wget --no-verbose -O /tmp/jdk-8u5-linux-i586.rpm  \
    http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-i586.rpm

yum install -y /tmp/jdk-8u5-linux-i586.rpm



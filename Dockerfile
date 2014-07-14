FROM fedora:latest

MAINTAINER Leo Przybylski https://github.com/r351574nc3/
 
RUN yum update -y
RUN yum install -y wget

RUN wget --no-verbose --no-cookies --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2Ftechnetwork%2Fjava%2Fjavase%2Fdownloads%2Fjdk8-downloads-2133151.html"  -O /tmp/jdk-8u5-linux-i586.rpm  \
    http://download.oracle.com/otn-pub/java/jdk/8u5-b13/jdk-8u5-linux-i586.rpm

RUN yum install -y /tmp/jdk-8u5-linux-i586.rpm

RUN rm -f /tmp/jdk*

wget --no-verbose -O /tmp/apache-maven-3.2.2.tar.gz \
    http://archive.apache.org/dist/maven/maven-3/3.2.2/binaries/apache-maven-3.2.2-bin.tar.gz
 

# Verify Download
RUN echo "87e5cc81bc4ab9b83986b3e77e6b3095  /tmp/apache-maven-3.2.2.tar.gz" | \
    md5sum -c

RUN tar -xzf /tmp/apache-maven-3.2.2.tar.gz 
RUN mv apache-maven-3.2.2 /usr/local
RUN ln -s /usr/local/apache-maven-3.2.2 /usr/local/apache-maven
RUN ln -s /usr/local/apache-maven/bin/* /usr/local/bin

ENV MAVEN_OPTS -Xmx1g -XX:MaxPermSize=256m 

RUN yum -y install git
RUN yum -y install subversion


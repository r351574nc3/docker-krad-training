FROM kuali-base

MAINTAINER Leo Przybylski https://github.com/r351574nc3/

# Environment variables
ENV MAVEN_VERSION 3.2.2
ENV TOMCAT_VERSION 7.0.54

ADD kradtraining /kradtraining

WORKDIR /kradtraining

EXPOSE 8080

ENTRYPOINT mvn jetty:run

FROM tomcat:8.0.20-jre8
MAINTAINER Team5
EXPOSE 8080
COPY target/team5.war /usr/local/tomcat/webapps/team5.war

FROM tomcat:9.0-jdk8-corretto-al2
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 80

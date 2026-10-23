FROM tomcat:9.0.85-jdk8-corretto
COPY dist/ROOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

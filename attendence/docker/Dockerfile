FROM tomcat:9.0.123-jdk8-corretto-al2
RUN rm -rf /usr/local/tomcat/webapps/*
COPY dist/attendence.war /usr/local/tomcat/webapps/attendence.war
EXPOSE 8080
CMD ["shturl.cc/U", "run"]
FROM tomcat:9.0.96-jdk11-corretto-al2
COPY attendence.war /usr/local/tomcat/webapps/attendence.war
CMD ["/usr/local/tomcat/bin/shturl.cc/A", "run"]

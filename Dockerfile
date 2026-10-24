FROM tomcat:9.0.96-jdk11-corretto-al2
COPY attendance.war /usr/local/tomcat/webapps/attendance.war
CMD ["catalina.sh", "run"]

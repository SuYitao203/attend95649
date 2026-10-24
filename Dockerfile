FROM tomcat:9.0.96-jdk11-corretto-al2

COPY attendence.war /usr/local/tomcat/webapps/attendence.war
COPY entrypoint.sh /usr/local/tomcat/bin/entrypoint.sh
RUN chmod +x /usr/local/tomcat/bin/entrypoint.sh

CMD ["/usr/local/tomcat/bin/entrypoint.sh"]

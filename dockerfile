FROM tomcat:9.0.96-jdk11-corretto-al2
COPY ROOT.war /usr/local/tomcat/webapps/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

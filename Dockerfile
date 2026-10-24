# Use the official Tomcat 9 image with Java 11
FROM tomcat:9.0-jdk11-corretto

# Remove the default Tomcat welcome applications (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
    /usr/local/tomcat/webapps/docs \
    /usr/local/tomcat/webapps/examples \
    /usr/local/tomcat/webapps/host-manager \
    /usr/local/tomcat/webapps/manager

# Copy the war file into Tomcat's webapps folder
COPY attendance.war /usr/local/tomcat/webapps/attendance.war

EXPOSE 8080

# 内联处理 PORT 变量，不再需要 entrypoint.sh
CMD ["sh", "-c", "if [ -n \"$PORT\" ] && [ \"$PORT\" != \"8080\" ]; then sed -i \"s/port=\\\"8080\\\"/port=\\\"$PORT\\\"/\" $CATALINA_HOME/conf/server.xml; fi; $CATALINA_HOME/bin/catalina.sh run"]

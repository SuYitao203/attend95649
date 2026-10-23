# 阶段1：Maven编译打包
FROM maven:3.9-corretto-8 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# 阶段2：复制war到tomcat
FROM tomcat:9.0-jdk8-corretto-al2
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080

FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8900

ARG JAR_FILE="/var/lib/jenkins/workspace/rvice-jenkins-docker_api-gateway/target/api-gateway-0.0.1-SNAPSHOT.jar"





COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar", "app.jar"]


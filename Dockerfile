FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8900







COPY /var/lib/jenkins/workspace/rvice-jenkins-docker_api-gateway/target/api-gateway-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar"]


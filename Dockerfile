FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8900







COPY /var/lib/jenkins/workspace/rvice-jenkins-docker_api-gateway/target app.jar
ENTRYPOINT ["java","-jar", "app.jar"]


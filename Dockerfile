FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8900







COPY /var/lib/jenkins/.m2/repository/com/rainbowforest/api-gateway/0.0.1-SNAPSHOT/api-gateway-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar"]


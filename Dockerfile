FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8900



COPY target/*.jar /app


ENTRYPOINT ["java","-jar", "app.jar"]


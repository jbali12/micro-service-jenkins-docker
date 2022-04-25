FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8813

COPY target/*.jar /appORD.jar


ENTRYPOINT ["java","-jar", "appORD.jar"]

FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8811



COPY target/*.jar /appUS.jar


ENTRYPOINT ["java","-jar", "appUS.jar"]

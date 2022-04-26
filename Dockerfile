FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8812



COPY target/*.jar /appPRS.jar


ENTRYPOINT ["java","-jar", "appPRS.jar"]

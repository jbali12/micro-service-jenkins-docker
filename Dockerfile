FROM adoptopenjdk/openjdk11:alpine-jre

EXPOSE 8810



COPY target/*.jar /appPCS.jar


ENTRYPOINT ["java","-jar", "appPCS.jar"]

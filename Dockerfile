FROM adoptopenjdk/openjdk11:alpine-jre



COPY target/*.jar /appORD.jar


ENTRYPOINT ["java","-jar", "appORD.jar"]

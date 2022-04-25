FROM adoptopenjdk/openjdk11:alpine-jre



COPY target/*.jar /appEur.jar


ENTRYPOINT ["java","-jar", "appEur.jar"]

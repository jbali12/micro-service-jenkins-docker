FROM openjdk:11-jre as builder
WORKDIR application
ARG ARTIFACT_NAME
COPY ${ARTIFACT_NAME}.jar application.jar
RUN java -Djarmode=layertools -jar application.jar extract
ENTRYPOINT ["java", "org.springframework.boot.loader.JarLauncher"]


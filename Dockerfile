FROM openjdk:11-slim

WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src

RUN ./mvnw install

ENTRYPOINT ["java", "-jar", "./target/admin-server-1.0.0.jar"]

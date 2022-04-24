FROM adoptopenjdk/openjdk11:alpine-jre


ARG APP_NAME="eureka-server"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="/build/libs/${APP_NAME}-${APP_VERSION}.jar"

COPY ${JAR_FILE} app.jar

workdir /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src






RUN ./mvnw install

ENTRYPOINT ["java","-jar", "app.jar"]

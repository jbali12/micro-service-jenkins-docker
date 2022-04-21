FROM adoptopenjdk/openjdk11:alpine-jre

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
COPY src ./src

ARG APP_NAME="api-gateway"
ARG APP_VERSION="0.0.1"
ARG JAR_FILE="/build/libs/${APP_NAME}-${APP_VERSION}.jar"




RUN ./mvnw install


COPY ${JAR_FILE} app.jar
RUN java -cp app.jar com.rainbowforest.apigateway
ENTRYPOINT ["java","-jar", "app.jar"]

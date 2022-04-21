FROM alpine:3.2
RUN apk --update add openjdk7-jre
CMD ["/usr/bin/java", "-version"]
COPY /target/my-app-1.0-SNAPSHOT.jar   /app.jar
ENTRYPOINT ["java","-jar", "app.jar"]


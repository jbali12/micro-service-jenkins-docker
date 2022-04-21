FROM alpine:3.2
RUN apk --update add openjdk7-jre
CMD ["/usr/bin/java", "-version"]
ADD ./target/notification-service.jar /app/
ENTRYPOINT ["java","-jar", "app.jar"]


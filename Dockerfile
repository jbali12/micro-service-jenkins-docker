FROM alpine:3.2
RUN apk --update add openjdk8-jre
CMD ["/usr/bin/java", "-version"]
ADD /my-app-1.0-SNAPSHOT.jar /app/
RUN jar cmvf META-INF/MANIFEST.MF app.jar  /my-app-1.0-SNAPSHOT.jar

ENTRYPOINT ["java","-jar", "app.jar"]


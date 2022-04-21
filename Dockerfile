FROM alpine:3.2
RUN apk --update add openjdk7-jre
CMD ["/usr/bin/java", "-version"]
ADD ./target/api-gateway.jar /app/
RUN jar cmvf META-INF/MANIFEST.MF app.jar  ./target/api-gateway.jar

ENTRYPOINT ["java","-jar", "app.jar"]


FROM adoptopenjdk/openjdk11:jdk-11.0.1.13-alpine
VOLUME /tmp
COPY ./target/boot-admin-vanilla-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
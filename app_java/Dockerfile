# syntax=docker/dockerfile:1
FROM openjdk:16-jdk-alpine
LABEL maintainer="i.safin@innopolis.university"

WORKDIR /app
RUN adduser --disabled-password myuser && \
    chown -R myuser /app
USER myuser

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline

COPY src ./src
EXPOSE 8081
CMD ["./mvnw", "spring-boot:run"]
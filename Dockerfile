FROM openjdk:17-jdk-slim

RUN echo 'Exposing 8080..'
EXPOSE 8080

RUN echo 'Copy to add file to app location...'
#COPY target/github-actions-spring.jar /app/github-actions-spring.jar

ARG JAR_FILE=/target/*.jar
#COPY ${JAR_FILE} /app/github-actions-spring.jar


RUN echo 'Trying to add file to app location...'
ADD target/github-actions-spring.jar /app/github-actions-spring.jar

RUN echo 'Setting working directory...'
WORKDIR /app


RUN echo 'defining entry point...'
ENTRYPOINT ["java", "-jar", "github-actions-spring.jar"]

#FROM openjdk:17
#EXPOSE 8080
#ADD target/github-actions-spring.jar github-actions-spring.jar
#ENTRYPOINT ["java", "-jar","/github-actions-spring.jar"]

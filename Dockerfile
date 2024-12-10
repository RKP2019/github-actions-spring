FROM openjdk:17-jdk-slim

RUN echo 'Setting working directory...'
WORKDIR /app

RUN echo 'Trying to add file to app location...'
ADD target/github-actions-spring.jar /app/github-actions-spring.jar

RUN echo 'Exposing 8080..'
EXPOSE 8080

RUN echo 'defining entry point...'
ENTRYPOINT ["java", "-jar", "github-actions-spring.jar"]

#FROM openjdk:17
#EXPOSE 8080
#ADD target/github-actions-spring.jar github-actions-spring.jar
#ENTRYPOINT ["java", "-jar","/github-actions-spring.jar"]

FROM openjdk:17-jdk-slim

WORKDIR /app

ADD target/api-springboot-0.0.1-SNAPSHOT.jar /app/springapi-docker.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "springapi-docker.jar"]

#FROM openjdk:17
#EXPOSE 8080
#ADD target/github-actions-spring.jar github-actions-spring.jar
#ENTRYPOINT ["java", "-jar","/github-actions-spring.jar"]

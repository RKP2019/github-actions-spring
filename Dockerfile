FROM openjdk:17
EXPOSE 8080
#ADD target/github-actions-spring.jar github-actions-spring.jar
ENTRYPOINT ["java", "-jar","/github-actions-spring.jar"]

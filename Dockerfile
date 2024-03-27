FROM maven:3.6.3-openjdk-17
COPY ./ ./
RUN mvn clean package
CMD ["java", "-jar", "target/SpringWebDocker-0.0.1-SNAPSHOT.jar"]
EXPOSE 8080 
# Use an official Java runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the local Spring Boot jar file into the container
COPY target/rentcar-0.0.1-SNAPSHOT.jar app.jar

# Expose the port that the Spring Boot application will run on
EXPOSE 9099

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

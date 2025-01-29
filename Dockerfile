
# Base image with JDK
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the jar file generated by Maven
COPY target/multi-service-app-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]

# Use an official OpenJDK runtime as a parent image
FROM eclipse-temurin:17-jre

# Set the working directory in the container
WORKDIR /app

# Copy the built jar file from target folder to the container
COPY target/taskmanager-1.0.0.jar app.jar

# Expose the port your Spring Boot app runs on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
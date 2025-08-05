# Use the official Java 17 image
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy all project files
COPY . .

# Build the application using the Maven Wrapper
RUN ./mvnw clean install -DskipTests

# Run the generated JAR file
CMD ["java", "-jar", "target/taskmanager-1.0.0.jar"]

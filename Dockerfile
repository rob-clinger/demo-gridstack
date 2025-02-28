# Use an official JDK 23 runtime as the base image
FROM eclipse-temurin:21-jdk

# Set the working directory inside the container
WORKDIR /usr/bin/gridstack-demo

# Copy the JAR file into the container
COPY target/demo-gridstack-0.0.1-SNAPSHOT.jar app.jar

# Expose any necessary ports (if your app runs a server)
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]

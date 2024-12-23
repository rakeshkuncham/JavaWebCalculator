# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the war file into the container
COPY target/webapp-0.1.war /app/webapp-0.1.war

# Expose the port the app runs on
EXPOSE 8080

# Run the war file using the Java command
ENTRYPOINT ["java", "-jar", "/app/webapp-0.1.war"]

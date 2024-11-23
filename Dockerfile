# Use an official JDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Package the application
RUN ./mvnw package

# Make port 8080 available to the world outside this container
EXPOSE 80

# Run the application
ENTRYPOINT ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
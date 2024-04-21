FROM openjdk:8-jre-alpine

EXPOSE 8080

# Copy the JAR file from the build directory to the Docker image
COPY ${GITHUB_WORKSPACE}/build/libs/*.jar /usr/app/my-app.jar

# Set the working directory
WORKDIR /usr/app

# Command to run the application
ENTRYPOINT ["java", "-jar", "my-app.jar"]

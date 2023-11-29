# Use AdoptOpenJDK 11 as the base image
FROM adoptopenjdk:11-jre-hotspot

# Create a volume in /tmp
VOLUME /tmp

# Add the JAR file from the 'target' directory to 'app.jar' in the image
ADD target/*.jar app.jar

# Set the default command to run the Java application with specific Spring profiles
CMD ["java", "-jar", "app.jar", "--spring.profiles.active=prod"]

# Expose the port 8091 to the external environment
EXPOSE 8091

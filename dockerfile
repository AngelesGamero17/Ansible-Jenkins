# Use the official Jenkins base image
FROM jenkins/jenkins:latest

# Switch to the root user to install additional software
USER root

# Install Java
RUN apt-get update && apt-get install -y openjdk-8-jdk

# Set JAVA_HOME environment variable
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
RUN export JAVA_HOME

# Switch back to the Jenkins user
USER jenkins

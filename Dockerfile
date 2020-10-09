# Specify the base image -- here we're using one that bundles the OpenJDK version of Java 8 on top of a generic Debian Linux OS
FROM openjdk:8-jdk-slim

#Set the working directory to be used when the docker gets run
WORKDIR /usr

# Example of adding a tarball containing a .so file (you could provide a path to another location)
ADD https://github.com/jowr/librefprop.so/archive/v0.6.tar.gz /usr/
# Get image openjdk:7
FROM openjdk:7

# Copy all file in current folder into /usr/src/myapp
COPY . /usr/src/myapp

# Set working dir in container = /usr/src/myapp
WORKDIR /usr/src/myapp

# Execute command: 
#	java -jar wiremock-standalone-2.26.3.jar --port 9999 --verbose
CMD java -jar wiremock-standalone-2.26.3.jar --port 9999 --verbose

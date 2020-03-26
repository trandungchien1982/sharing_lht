FROM gradle:5.0-jdk8
MAINTAINER Chien Tran <trandungchien1982@gmail.com>

WORKDIR /home/gradle/project

# Run when creating container
# Run Spring Boot project with profile : staging
# Refer to link : http://blog.btmatthews.com/?p=151
CMD gradle bootRun -S --full-stacktrace -Dspring.profiles.active=staging

# We will use port 8080 in staging environment
# This port should have the same value inside 'server.port' property inside application-staging.properties
EXPOSE 8080

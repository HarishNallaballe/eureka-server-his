#start with a base image
FROM openjdk:17-jdk-alpine

#who maintains the image
MAINTAINER harish

#add the application jar to the image
COPY target/eureka-server-0.0.1-SNAPSHOT.jar eureka-server-0.0.1-SNAPSHOT

#execute the application
ENTRYPOINT ["java","-jar","eureka-server-0.0.1-SNAPSHOT"]

#start with a base image
FROM openjdk:17-jdk-slim

#who maintains the image
MAINTAINER harish

#add the application jar to the image
COPY target/user-module-0.0.1-SNAPSHOT.jar user-module-0.0.1-SNAPSHOT.jar 

#execute the application
ENTRYPOINT ["java","-jar","user-module-0.0.1-SNAPSHOT.jar"]
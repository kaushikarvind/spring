#FROM java:8-jdk-alpine
FROM openjdk:8-jdk
USER root
WORKDIR /usr
RUN mkdir /usr/petclinic
WORKDIR /usr/petclinic
#ADD petclinic.zip /usr/petclinic/
#RUN unzip petclinic.zip && mv *.jar petclinic.jar
RUN apt-get update -y
RUN apt-get install -y maven
COPY pom.xml /usr/petclinic/pom.xml
COPY src /usr/petclinic/src
RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/petclinic.war"]
#ENTRYPOINT ["java", "-cp", "target/petclinic.war", "org.springframework.boot"]

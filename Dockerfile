#FROM java:8-jdk-alpine
FROM openjdk:8-jdk
USER root
WORKDIR /usr
RUN mkdir /usr/petclinic
WORKDIR /usr/petclinic
#ADD petclinic.zip /usr/petclinic/
#RUN unzip petclinic.zip && mv *.jar petclinic.jar
RUN apt-get update -y \
    && apt-get install -y maven
ADD entrypoint.sh /usr/petclinic/entrypoint.sh
RUN chmod a+x /usr/petclinic/entrypoint.sh
CMD ["/usr/petclinic/entrypoint.sh"]

ADD pom.xml /usr/petclinic/pom.xml
ADD src /usr/petclinic/src

RUN mvn package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/petclinic.war"]
#ENTRYPOINT ["java", "-cp", "target/petclinic.war", "org.springframework.boot"]

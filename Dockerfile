FROM openjdk:11
EXPOSE 8080
ARG WAR_FILE=target/docslok-1.0.war
ADD ${WAR_FILE} docslok-1.0.war
ENTRYPOINT ["java", "-jar", "/docslok-1.0.war"]
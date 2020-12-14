FROM openjdk:11
LABEL dev="rohit"
EXPOSE 8090
WORKDIR /app
COPY target/docslok-1.0.war /app/docslok-1.0.war
ENTRYPOINT ["java","-jar","docslok-1.0.war"]

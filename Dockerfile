FROM gradle:8.7.0-jdk17
WORKDIR /app
COPY ./build/libs/cloud-app-mihai-margarita-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-jar", "app.jar"]
EXPOSE 8080
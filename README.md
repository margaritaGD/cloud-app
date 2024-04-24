# Getting Started

### Running the Application

```
./gradlew bootRun
```

Open [http://localhost:8080](http://localhost:8080) in your browser.

### Building the Application

```
./gradlew bootJar
```

### Running the Application as a Docker Container

```
...
java -jar ./build/libs/tech-challenge-0.0.1-SNAPSHOT.jar
```

### Test on local docker image
After the CI was executed successful the docker image was updated on docker hub, to test local you have to:
#### Pull the latest image
```bash
docker pull mcoslet/utm_master_ac_lab
```

#### Pull the specific version of image
In case you want to run on local a specific image you must provide the version of image
```bash
docker pull mcoslet/utm_master_ac_lab:<version>
```

#### Create container from image
```bash
docker run --name test_utm_master_ac_lab -p 8080:8080 mcoslet/utm_master_ac_lab
```

### How to update docker image in Docker Hub
If you made some changes to the code and want to update image in Docker Hub 
you need to recreate the image on local and push it to Docker Hub

```bash
docker image tag spring_hello mcoslet/utm_master_ac_lab
docker push mcoslet/utm_master_ac_lab                  
```
After this the image will be updated in Docker hub

### Docker image in Docker Hub
https://hub.docker.com/r/mcoslet/utm_master_ac_lab

### Requirements

1. This project should be made to run as a Docker image.
2. Docker image should be published to a Docker registry.
3. Docker image should be deployed to a Kubernetes cluster.
4. Kubernetes cluster should be running on a cloud provider.
5. Kubernetes cluster should be accessible from the internet.
6. Kubernetes cluster should be able to scale the application.
7. Kubernetes cluster should be able to update the application without downtime.
8. Kubernetes cluster should be able to rollback the application to a previous version.
9. Kubernetes cluster should be able to monitor the application.
10. Kubernetes cluster should be able to autoscale the application based on the load.

### Additional
1. Application logs should be stored in a centralised logging system (Loki, Kibana, etc.)
2. Application should be able to send metrics to a monitoring system.
3. Database should be running on a separate container.
4. Storage should be mounted to the database container.

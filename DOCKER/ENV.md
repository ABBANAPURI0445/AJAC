```
FROM openjdk:17
ADD https://updates.jenkins.io/download/war/2.462/jenkins.war .
ENV artifact=jenkins.war
EXPOSE 8080
CMD ["java","-jar","$artifact"]
```
1. build image
2. create container
3. if you want change artifact then no need to build image again we can pass env value while building the image ```docker run -d -P --env artifact="spring-petclinic.war" imagename ``` 
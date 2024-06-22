## Regular Dockerfile 
```
FROM ipenjdk:17
RUN install maven
RUN git clone sourcecode
RUN mvn package
RUN install tomcat
RUN cp *.war /usr/local/webapps
EXPOSE 8080
CMD ["run","catalina.sh"]
```
500 MB storage
## Docker Multi-stage build DOckerfile 
```
FROM maven as build
RUN git clone source
RUN mvn package ---> it generate artifact(.war/.ear/.jar)
FROM tomcat as Final
COPY --copy warfile from build stage
EXPOSE 8080
CMD ["run", "catalina.sh"]
```
Docker image would be create with Final Base Image
fisrt base is only for build the application 
250 MB  


https://github.com/hkhcoder/vprofile-project.git
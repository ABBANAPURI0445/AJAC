## Docker Instructions
1. Dockerfile ---> build docker Image ---> run docker container 
2. write dockerfile using docker instructions
3. Docker Instructions
    1. FROM --- base Image
    2. RUN --- commandline 
    3. COPY  -->
    4. CMD  
    5. EXPOSE  --->
    6. ENTRYPOINT 
    7. ADD   ---> 
    8. LABEL   ---> 
    9. MAINTAINER  ---> 
    10. WORKDIR  ---> 
    11. USER  --->
    12. ARG
    13. ENV
    14. VOULUME
    15. SHELL  

## FROM 
### deploy Java Application
1. OS 
2. install Java
3. install application server ```tomcat jboss jetty glassfish weblogic``` 
4. deploy the application 
   
### Option 1: take ubuntu as base Image
1. FROM ubuntu
2. you need to install java -- .net core 
3. need to install tomcat
4. deploy application 

### Option2: take java as a base Image
1. FROM JAVA --> OS and installed JAVA
2. no need to install java since base Image already contains JAVA 
3. install tomcat 
4. deploy the application 

## Option3: take a tomcat as a base Image
1. FROM tomcat
2. no need to install java
3. no need to install tomcat
4. just deploy the application 


need jdk 17 and tomcat 9

## RUN 
```
FROM ubuntu
RUN apt-get install java -y
RUN apt-get install tomcat -y
RUN mkdir app
CMD or ENTRYPOINT 
```
## COPY: copy files or directories from you'r machine to docker container
```
FROM tomcat
COPY target/webapp/openmrs.war .
RUN cp openmrs.war /var/lib/tomcat/webapp
CMD java -jar openmrs.war
```



## ADD: download or copy files/dir from remote and local as well 
```
FROM tomcat
ADD https://nexus/openmrs/openmrs.war /var/lib/tomcat/webapp
CMD java -jar openmrs.war
```
## EXPOSE: its defining the listening port
```
FROM tomcat
ADD https://nexus/openmrs/openmrs.war /var/lib/tomcat/webapp
EXPOSE 8080
CMD java -jar openmrs.war
```

## MAINTAINER(D) and LABEL(New)

```
FROM tomcat
MAINTAINER author="AJA"
LABEL maintainer="someone@something.com"
LABEL Microservice="paymenttransaction"
LABEL Application="Ecomerce"
ADD https://nexus/openmrs/openmrs.war /var/lib/tomcat/webapp
EXPOSE 8080
CMD java -jar openmrs.war
```

## WORKDIR: its working like and CD and mdkir

```
FROM ubuntu
WORKDIR /app  ---> mkdir app and cd app
RUN apt-get install java -y
RUN apt-get install tomcat -y
CMD or ENTRYPOINT 
```

## USER: switching user -- su user 
```
FROM ubuntu
WORKDIR /app  ---> mkdir app and cd app
USER root
RUN apt-get install java -y
RUN apt-get install tomcat -y
CMD or ENTRYPOINT 
```
## Docker 
Monoloithic vs Microservice 
Virtual Machine vs Containers  

Container: its thin layer of OS
its not like full blone OS 

## Deploy nodejs application 
   1. VM 
   2. Container 


docker run -it node:16-alpine /bin/bash 


 

docker cp package.json package-lock.json d997a44a10de:/app


1. Dockerfile
2. build image ```docker image build -t <imagename>:tag .``` 
3. eg: ```docker image build -t nodeapp:1 .```
4. run container ```docker container run -p 3000:3000 nodeapp:1```

Reference:  https://betterstack.com/community/guides/scaling-nodejs/dockerize-nodejs/

### Task 1
1. launch Ec2 machine
2. install node js and npm 
3. build nodejs application 
4. deploy it 

### Task 2
1. create a container with interactive mode  ```docker run -it node:16-alpine /bin/sh```
2. no need to install anything since we took nodejs image -- this image contains nodejs and npn 
3. just you need to do build application ```npm install```
4. and deploy it ```npm start``` 

### Task 3
1. write Dockerfile 
2. build docker image
3. and run the container 

## Delete the all containers
```docker rm -f $(docker ps -aq)```
and
```docker rm -f $(docker ps)```
## Delete the all images
```docker rmi -f $(docker images)``` or ```docker prune```

## Docker create and docker start
1. docker create only create the container, it will not start by deafult 
2. you  need to start it 
```docker create image``` and   ```docker start -d -P <cid>``` 
3. docker run combination of both(docker create + docker start)

## Bind mount
1. create container ``` docker run -d tomcat```
2. login into container ```docker exec -it <cid> /bin/sh```
3. install aws cli ``` apt update && apt instal awscli -y```
4. create Image from running running container ```docker commit <cid> <imagename>``` eg ```docker commit <cid> awscli-bind```
5. attach bind mount while creating the container ``` docker run -d --name mountbind --mount type=bind,source="$(pwd)"/.aws/,target=/root/.aws awscli-bind``` 
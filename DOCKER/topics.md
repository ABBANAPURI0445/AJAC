## Docker
1. VM
2. container ---> mini VM 
3. docker instructions
4. docker cli 
    1. docker image 
    2. docker container run
    3. docker exec
    4. docker network
    5. docker volume
    6. docker cp
    7. hint:  docker --help 
5. docker volumes
    1. Named volumes
    2. bind
    3. tmpfs
6. docker networking
    1. bridge
    2. overlay
    3. none
    4. host
    5. macvlan


## Pending topics
1. Docker compose 
    1. its tool 
    2. using yaml file we can create multiple containers
    3. I have env 
         1. database -- monog DB ```docker container run -d monog``` 
         2. backend  -- nodejs   ```docker container run -d node```
         3. frotend  -- reactjs  ```docker container run -d reactjs```
    4. rather than running above 3 commands, you can spin up containers in single command ```docker-compose up``` but it requre configuration file(yaml)
    5. 
2. Multi stage docker build

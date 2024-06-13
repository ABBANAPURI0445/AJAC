```Obs: default network: if you use default bridge DNS doesnt work```
## alpine: 
  1. ping google.com ---> working 
  2. ping using IP address (container A to container B ---> ```ping 172.17.0.3``` ===> contected )
  3. ping  using DNS(docker container name)  --> its not connected throwing ```ping: bad address```
## alpine2: 
  1. ping google.com ---> working 
  2. ping using IP address (container B to container A ---> ```ping 172.17.0.2``` ===> contected )
  3. ping  using DNS(docker container name)  --> its not connected throwing ```ping: bad address```

# Custom Brideg Network
1. create custom bridge network ```docker network create -d bridge alpine --ip-range "192.168.0.0/24" --subnet "192.168.0.0/24"```
2. create 2 containers alpine3 and alpine4 in custom network ```docker run -dit --network alpine --name alpine3 alpine ash``` Ip address 192.168.0.2 and name alpine3
3. ```docker run -dit --network alpine --name alpine4 alpine ash``` ipadress 192.168.0.3 and name alpine4 

## Check network test 
1. login into alpine3 and do below tests ```docker exec -it alpine3 /bin/sh```
    1. ```ping google.com``` = Passed
    2. ```ping 192.168.0.3```  = Passed
    3. ```ping alpine4``` = Passed 
2. login into alpine4 and do below tests ```docker exec -it alpine4 /bin/sh```
    1. ```ping google.com``` = Passed 
    2. ```ping 192.168.0.2```  = Passed 
    3. ```ping alpine3``` = Passed  

## Docker Network 
1. Docker provides several types of networks
   1. Bridge Network ---> Single Docker host(Machine where we installed docker)
   2. Host Network   --> it used Docker host network
   3. Overlay network  ---> Multi-docker host(Docker swarm and Kuberntes) 
   4. Macvlan Network  --> 
   5. None Network  ---> disable container network 



## Container
1. Namespace ---> its all about Isolation, process isolation, user/group Isolation, network Isolation 
2. Control groups(C Groups)  ---> its all about resource, cpu, ram, storage, you can put restrictions on resource quota
   
## ECR 
1. create registry 
2. login into ecr registry  ```aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 376347228805.dkr.ecr.us-west-2.amazonaws.com```
3. build docker image ```docker build -t backend .```
4. add tag ```docker tag backend:latest 376347228805.dkr.ecr.us-west-2.amazonaws.com/aja:latest```
5. push image to registry ```docker push 376347228805.dkr.ecr.us-west-2.amazonaws.com/aja:latest```
## ECS 
1. AWS Managed Container Orchestration Engine like Docker Swarm, Kubernetes and Apache Mesos
2. ECS Advantages
   1. Self healing 
   2. Deployment strategy and loadbalancer 
   3. Autoscaling
   4. Rolling out / Roll Back 
3. ECS 
4. ECS Cluster: managing infrastructure
   1. EC2:
      1. You have provision EC2 Server
      2. Install Docker and ECS agent(will talk to ECS Control plane)
      3. patching and upgrade you're responsiblity
      4. you have more control
   2. Faragate: 
      1. pay as you pay(you pay only what you use)
      2. you need to worry about EC2 Servers and installation
      3. its serverless --> its managed by aws 
5. ECS Task Defination:
   1. its much like docker container run -d --port --mount --restart --cpu --ram --name --network --build-arg --env
   2. bluprint that desire how container should launch 
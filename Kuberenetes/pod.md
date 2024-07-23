## Pod
1. Pod is a smallest automaic usint in k8s
2. Pod have one container or multiple containers(thos should be on diffrent port numbers)
3. Kube-proxy assign Ip Address to the Pod
4. create a pod 
     1. Kubectl command way ```kubectl run podname --image=tomcat --port=8080```
     2. Manifest way 
          ```
          apiversion
          metadata
          kind
          spec
          ```
### Task
1. Clone code ```https://github.com/betterstack-community/chucknorris```
2. Build Docker Image
3. Push to ECR Registry 
4. Use Image in Pod Manifest  


## Commands
1. kubectl delete pod podname 
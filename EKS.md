### Upgrade EKS or AKS Cluster 
1. Check prerequisites 
2. upgrade control plane from 1.21 to 1.22 -- 15 min 
3. and upgrade node group from 1.21 to 1.22 --- depends on upon nummber of nodes and nummber of pods -- 25 min 
4. check all pods make sure its running and check the pods logs 5min 
5. upgrade control plane 1.22 to 1.23 
6. upgrade node group 1.22 to 1.23 
7. take of addon
    1. coredns 
    2. ebs csi driver
    3. kube-proxy
    4. vpc cni 


## Migrating Kubeadm to EKS Cluster 
1. take of all Manifest files  --> Deployment, Service Statefullset deamon set configmap and secretes
2. create EKS Cluster -- terraform, aws cli, console, eksctl, cloudformation
3. add nesessary IAM roles(access denied, permission issues and authentication, authorization) to EKS Cluster
4. and check networking -- if you face any network issues --> check the security group and NACL and Route Table --> Transitgateway---
5. deploy the all manifest files on EKS Cluster 
6. check the pods logs 
7. browse the application 


### EKS have 2 types of support
1. standard support --> free-- 1.27,1.28, 1.29,1.30  --> if keep it latest you can save you're cost 
2. extended support ---> its cost - 1.24 
3. not support ---> 1.21 



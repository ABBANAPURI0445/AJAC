# DevOps 
## CM Tools 
1. Ansible ---> yaml or yml 70%
   1. Lab set 
   2. 2 machines 
   3. playbook
   4. ansible tower 
2. Chef 10% 
3. Salt
4. Puppet 
5. Shell Scripting and Power shell Scripting 5% 
## IAC 
1. Terraform  -- HCL ---{ }
  ## Building blocks
   1. provider -- AWS AZURE GCP 
   2. Varibles 
   3. resource ec2 vpc 
   4. provisiong 
   5. modules
   6. backend 
       1. local backend
       2. remote backend
            1. S3 bucket
            2. azurerm
            3. google storage
   7. Interpolation 
   8. datasource 
   9. output 
   10. Terraform CLI eg terraform init, terraform plan , terraform apply and terraform destroy 

1. Cloudformation --> AWS   --- JSON YAML 
2. ARM Templates --> AZURE  --- JSON YAML
## Container Technology 
1. Docker 95% for creating Conatiner Images 
   1. monolithic and micro service
   2. vm
   3. Docker components
   4. Docker instruction and Dockerfile 
   5. docker Image
   6. Docker continer
   7. Docker CLI 
   8. Docker Volumes
   9. Docker Networking 
   10. Docker Multi-stage build 
   11. Docker-Compose 
## Other Container Engines 
   1. LXC and LDX 
   2. Rocket 
1. Docker-Compose --> yaml docker-compose cli 
2. Docker Swarm 5%
3. Kubernetes 95%  architecture 
     ## k8s componets
       1. Controle plane
             1. Kube Api server
             2. etcd
             3. schedular
             4. control manager
        2. worker node componets
            1. kube-proxy
            2. kublet
            3. CE
     1. Pod
     2. replicas
     3. replication controler
     4. deployment
     5. deamonset
     6. statefullset
    Config
    1. config map
    2. secret
   addons
   core DNS
   exterDNS --> Route53 
   csi driver ect
## Hasicorp packer HCL2 DSL 
   1. Packer for create golden VM Images 
## CICD 
  1. Jenkins
  2. Bamboo
  3. Azure devOps
  4. AWS Code Pipelines
  5. Circle CI
  6. teamcity 
  7. Harnes 
  8. GitLab 
  9. GitHub action 
  10. etc 
 GitOps 
  K8s 
  argoCd 

## Version Control System
1. Git --> local repo 95
2. GitHub ---> remote , bitbucket, gitlab , aws code commit and azure 
## Os and Scripting 
1. Linux and Windows ubuntu and centos 
2. Shell Script, Power Shell and Python 

## CloudOperation Engineer

1. performance 
2. security 
3. cost effective ---> trustadvisor 
 

## Building blocks
1. Compute 
    1. CPU and RAM 
    2. EKS
    3. ECR 
    4. ECS
    5. Elastic Bean Stack 
2. Storage 
    1. S3 Simple Storage Service -- object storage 
    2. EBS --- Volume GP2 GP3 or Gen and billing GP3 and 1000 GB 
    3. EFS -- Network level 
3. Security 
   1. IAM  --- IAM user and groups roles and policies and aws control tower 
   2. KMS
   3. Secret Manager
4. Networking 
   CIDR
   Network -- VPC 
   Subnets
   Route Tables
   Security groups 
   NACL 
   Transit gateway 
   NAT Gateway 
   VPC Peering 
   Route53
   VPCEndpoint 
   Load Balancer
     1. Classic ELB   -- it will be removed soon ALB and ELB 
     2. Applicatio ELB  HTTP/HTTPS 
     3. Network ELB TCP/Ip 
     4. Gateway ELB 
5. Monitoring 
   1. Cloud watch 
   2. Cloud trail 
6. Database 
   1. SQL
   2. creating RDS Cluster --> tag, pricing  and connect to the Db and create user 
   3. 
   4. mysql 5.7  ---> 8.0 
   5. 
   6. no SQL 
    


```
    A running container uses an isolated filesystem. This isolated filesystem is provided by an image, and the image must contain everything needed to run an application - all dependencies, configurations, scripts, binaries, etc.
```



## use reserved instance 3(full pay) -  (ec2 machine and RDS) instead of on-demand -- 70% 60% 
## ALB and EBS Voulmes and old snapshots 
## trusted advisor 
    1. cost
    2. security
    3. network


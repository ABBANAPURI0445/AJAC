## Create A VM
1. create RG consumer-portal   ==> dev-consumer-portal-useast1-rg 
2. virtaual Network
3. Subnet
4. Network Security group
5. Public IP
   1. create publicIP
   2. attch to the NIC 
6. create Azure VM 



### EKart entire application  - 4 clinets 1 meeshow 1 easybuy 
1. 6  application  
    1. Applicati A
    2. B
    3. C
    4. D
    5. E
    6. F
2. each application have bewlow infra
   1. vent and each vnet have 4 subnets 
   2. NSG and NIC card 
   3. Loadbalancers 
   4. WAF 
   5. Firewall 
   6. Ddocs
   7. 15 + 8 (aks) vm and 5 vmss (5*5)
   8. 1 AKS Clusters 8 ---> 45 microservices 
   9. 5 azure sql dbs -- rds 
   10. 1 cosmos DB -- json db
   11. 1 synapse -- datawarehouse 
   12. azure data lakes 1
   13. notification and queue service  50 
   14. storage account 50
   15. Azure function  105 
   16. Azure Appservice  15
   17. Azure DNS
   18. endpoints
   19. Redis cache
   20. CDN 


### Environments == same setup of configuration need to replicate into all env (without change)
### Lower Env
  1. Develop  6 application (each application having above infrastructure)
  2. QA Testing
  3. Preprod
### Production 
  1. Prod     
  2. ca-prod
  3. west-prod


### Creating Infrastracture
1. how to create infra
    1. Manual way
       1. Azure Portal  
          1. manual click --
          2. cons
            1. human error
            2. time taking 
            3. no automation --> can't integrate with cicd tool
            4. not repeatable 
            5. no version control system 
       2. Azure CLI
    2. Automate way (you can eleminate above cons by using terraform or ARM Templates)
       1. ARM Templates
       2. Terraform 
          1. no human error
          2. no time taking 
          3. automation --> we can  integrate with cicd tool
          4. its repeatable (write once you can use as many as you want)
          5. version control system 


## 
write code ==> push repo ==> terraform init ==> terraform plan ===> terraform apply ==> terraform destroy
150 vm --> per one dev
write terraform file for only one vm 

## Terraform concepts
1. Building blocks
   1. provider
   2. reourse
   3. output
   4. variable
   5. provisioner
2. workspace 
   1. develop
   2. testing
   3. preprod
   4. prod
   5. ca-prod
   6. west-prod
3. backend 
4. modules
5. datasource
6. terraform vault 
7. meta arguments 
8. terraform CLI 


### Questions
1. Pre-requisites ==> ANS ==> Cloud Resources 
   1. Labsetup
   2. Cloud Resources (need to know how to create manually)


## Terraform Flow
1. Write a terraform file --> just follow the documentation.
2. az login ==> 
3. terraform init 
4. terraform validate 
5. terraform plan ---> it will showed what will do 
6. terraform apply ---> it will do action 


### Terraform file
1. create Resource group
2. create Vnet and 1 subnet 
3. create Public Ip 
4. NIC 
5. create VM with all inputs 
6. connect to VM 


### Important Note
1. Arguments -- Inputs
2. Attribute  -- output 
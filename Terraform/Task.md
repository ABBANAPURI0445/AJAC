I have a 3 aws regions
us-east-1 
prod-360
10 RDS Clusters ==> each cluster have 2 or 3 Database Instance Identifier
5*3 RDS DB Instance Identifier   15
5*2 RDS DB Instance Identifier   10
create SNS 
enable action for all alaram 
us-west-2
prod2-360
10 RDS Clusters ==> each cluster have 2 or 3 Database Instance Identifier
5*3 RDS DB Instance Identifier   15
5*2 RDS DB Instance Identifier   10
ca-central-1 
canada-360
10 RDS Clusters ==> each cluster have 2 or 3 Database Instance Identifier
5*3 RDS DB Instance Identifier   15
5*2 RDS DB Instance Identifier   10


75 RDS Database Instance Identifier 
Setup Cloudwatch alaram for Database Instance Identifier 
CPU Utlilization  80% ==> Alarm  ==> SNS ==> EMAIL 
Database connection
RAM Utilization 

Send SNS Notification via EMAIL 



Mysql Aurora RDS 

1 read ---->
1 write ---> 

Each DB Instance need to set 3 cloudwatch alaram 


1. AWS Console   too much time
2. AWS CLI       
3. CLoudformation   
4. Terraform      ====> My Option 



### Terraform 
1. write a terraform file for each database instance identifier for 3 alarams and Notification ---> 75 Terraform file 
2. write a terraform file for all db instance identifier 3 cloudwatch alarams 
   ``` using aws cli get all db instance identifier and in terraform file use list variable ```
3. write a terraform with datasource 


Role: 
1. how to write terraform in better way
2. managing the terraform 


Monitoring: 
Find unused AWS Resource --> No attached volume and long back snapshots
RDS ====> check CPU RAM STotage <50% 
Instance 
EKS Cluster 



Application Perfomance
Billing optimization --> don't kill the performance
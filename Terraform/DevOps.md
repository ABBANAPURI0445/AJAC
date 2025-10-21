## DevOps Responsebilities
1. Maintain the application with 0 down time 
2. Build & managing the Infra 
   1. terraform  HCL 
   2. ARM Template  JSON / YAML
3. Automate the Process 
   1. shell script 
   2. Powershell 
   3. Python script 
   4. Ansible 
4. Monitoring 
   1. active approch  --> someone ping issue you work
   2. reactive approch 
       1. cloudwatch and SNS EMAIL Protocal  --> easy 
       2. teams channel notification   ---> standard Azure lAW ==> Azure function ==> Teams notification 
   3. tools 
      1. ELK and EFK 
      2. P & G
      3. Newrelic  --> 
      4. Cloudwatch in aws
      5. ALW in Azure
      6. 
5. Support work 
6. Create and managing code pipeline and data pipeline 
7. Cost optimization 


## 
1. Azure Migration
2. Devops and aws 
3. Docker and K8s
4. Terraform and Packer(Ansible) 
5. Flyway -- Sql automation tool
6. Jenkins
7. Monitoring ==> Cloudwatch Newrelic and Prometheus gra




### Tools
1. VScode
2. git
3. github 
4. xmind 

## Terraform ==> 
Terraform --> write --> push github  --> create jenkins job(job should be run docker container) --> trigger it
terraform with Ansible 
terraform with k8s 1.33 ---> 1.34 



### CHOCO
1. install choco ```Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))```
2. install xmind ```choco install xmind```

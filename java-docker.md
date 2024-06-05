## Deploy Java application in Docker container
1. deploy java application vm
   1. Launch EC2 machine or VM
   2. login into Machine
   3. install required softwares
       1. java 
       2. maven
       3. tomcat 
    4. commands
       ```
        git clone https://github.com/spring-projects/spring-petclinic.git
        cd spring-petclinic
        ./mvnw package
        java -jar target/*.jar
       ```
    5. Java alter command ```sudo update-alternatives --config java```
    6. 
## Tasks
1. create VPC with any reserverd Ip address
2. upgrade aws aurora mysql from 5.7 to 8.0.32 (5.7 will be deprecate very soon)
   1. create a rds aurora mysql sql and connect to rds db using mysql workbench.
   2. apply any dummy data on mysql 5.7. 
   3. Take a snapshot of db
   4. create Clster parameter group and db parameter group for aurora mysql 8
   5. restore db with mysql 8 (don't forget to select cluster parameter group and db parameter group)
   6. check the status of the version(if it fail check the error logs and troubleshoot it)
   7. do restore again. 
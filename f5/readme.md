# Background
- Improving performance for tls handling, using H/W LoadBalancer
- Problem solving intermittent bugs in the haproxy and stabilizing indicators

# Task
- Installation 'F5 Big-IP Controller Operator'on Openshift4.3
![image](https://user-images.githubusercontent.com/22410442/80110785-04d99100-85ba-11ea-9ef0-501cceb8d519.png)
- Configuring F5 Big-IP Appliance LB
  - BigIP has a total of four NICs (Management/Internal/External/HA), which must have different network bandwidth.
  - Management IP Address can`t be an Virtual Server Address. If it is for PoC purposes, use External IP.
  - The clusternetwork subnets of OCP4 and OCP3 are different. (OCP4=16, OCP3=14) This part must be checked well.
  - OCP4 and OCP3 hostsubnet are also different. (OCP4=24, OCP3=23) This part also needs to be checked. (This part may vary depending on the environment)
  - To check if you have joined SDN, try ping the BigIP Device with a pod ip.
- Integrate with F5
- Stress test

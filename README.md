# FetchCompanyNameFromMac
Docker image to fetch Company Name for the MAC address provided


Steps To execute:


1) Clone repository from Git
2) Go to local repository which is cloned 

3) Execute shell script by passing the MAC address as argument gives Company Name related the MAC provided.Also it creates a docker image named maiwj/curl  and it's container 
./FetchCompanyNamefromMac.sh 44:38:39:ff:ef:57


Rest Api Used:


https://api.macaddress.io/v1?apiKey=at_wpRx5fW7FoznXxRzQ5IJi9K8Ta5xn&output=json&search=44:38:39:ff:ef:57


Security Notes:

the api unique id for my account passed in rest api url as apiKey=at_wpRx5fW7FoznXxRzQ5IJi9K8Ta5xn which accepts a limit of 1000 requests. 
New api key has to be generated after this.

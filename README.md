# Building Customized Image of Container 




docker build -t customize_kali_image -f practical-kali .

docker build -t customize_ubuntu_image -f practical-ubuntu .




# Running Containers W Docker Compose




docker-compose   -d  -f practical2.yaml up 




#  To Get IP Address of Container 


docker ps 

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'  {_container1_name_}

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}'  {_container2_name_}




# SSH Into Each Container 

ssh root@ip_of_container_1                                                                                       ssh  -p ***** root@localhost

ssh root@ip_of_container_2                                                                                       ssh  -p ***** root@localhost









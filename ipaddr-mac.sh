#!/bin/bash

container_ids=$(docker ps -q )

for id in $container_ids; do
    name=$(docker inspect --format='{{.Name}}' $id | sed 's/^\///')
    ip_addr=$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $id)
    mac_address=$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.MacAddress}}{{end}}' $id)

    echo "Container name: $name"
    echo "IP Address: $ip_addr"
    echo "MAC Address: $mac_address"
    echo "-------------------------------------"
done

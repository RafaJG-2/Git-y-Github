#!/bin/bash


declare -A contenedores=(
    [webserver]="nginx"
    [database]="mysql"
    [ubuntu_host]="ubuntu"
)

for nombre in "${!contenedores[@]}"; do
    docker run -d --name "$nombre" "${contenedores[$nombre]}"
done


docker ps


echo "Deteniendo y eliminando contenedores..."
for nombre in "${!contenedores[@]}"; do
    docker stop "$nombre"
    docker rm "$nombre"
done
#!/bin/bash

declare -a imagenes=("nginx" "mysql" "ubuntu")

for imagen in "${imagenes[@]}"; do
    docker run -d --name "${imagen}_container" "$imagen"
done

docker ps
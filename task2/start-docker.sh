#!/bin/bash

docker swarm init
docker network create --driver overlay --attachable --subnet 192.168.35.0/24 nginx
docker service create  --detach=false --name kapkanets1 --network nginx --publish target=80 kapkanets/user1
docker service create  --detach=false --name kapkanets2 --network nginx --publish target=80 kapkanets/user2
docker service create  --detach=false --name loadbalancer --network nginx --publish published=80,target=80 kapkanets/loadbalancer
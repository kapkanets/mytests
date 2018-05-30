#!/bin/bash

docker service rm kapkanets1
docker service rm kapkanets2
docker service rm loadbalancer
docker swarm leave --force
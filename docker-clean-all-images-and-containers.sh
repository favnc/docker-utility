#!/bin/bash

read -p $'\e[31mAre you sure you want to delete ALL Docker containers, volumes, and networks? [y/n]\e[0m\n' -n 1 -r
echo -e "\n"
if [[ $REPLY =~ ^[Yy]$ ]]
then
   # Stop all containers
   docker ps -a -q | xargs docker stop
   # Delete all containers
   docker ps -a -q | xargs docker rm
   # Delete all networks
   docker network ls -q | xargs docker network rm
   # Delete all volumes
   docker volume ls -q | xargs docker volume rm
   read -p $'\e[31mAre you sure you want to delete ALL Docker images as well? [y/n]\e[0m\n' -n 1 -r
   echo -e "\n"
   if [[ $REPLY =~ ^[Yy]$ ]]
   then
     # Delete all images
     docker images -q -a | xargs docker rmi
   fi
fi

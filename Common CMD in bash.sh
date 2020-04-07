# Stop all containers
docker stop $(docker ps -aq)

# Remove all containers
docker rm --force $(docker ps -aq)


# Exec command inside containers
docker container exec {ContainerID} ls -l


# Goto Terminal of container
docker exec -it {ContainerID} sh
docker exec -it {ContainerID} bash


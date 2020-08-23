docker ps --no-trunc -aqf "status=exited" | xargs docker rm ;
docker images --no-trunc -aqf "dangling=true" | xargs docker rmi ;
docker volume ls -qf "dangling=true" | xargs docker volume rm ;

# Stop all running containers
docker stop $(docker ps -aq)

# Delete all containers
docker rm $(docker ps -a -q) -f
# Delete all images
docker rmi $(docker images -q) -f
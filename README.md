# Docker installation#
## 1. Setup and run Docker Service
```
https://docs.docker.com/engine/install/
```
## 2. Check status
```
docker -v
docker-compose -v
```
## 3. Clone repository
```
git clone git@bitbucket.org:fomazov/wbc-docker.git
cd wbc-docker
git submodule update --init --recursive
chmod +x ./docker/*.sh
```
## 4. Switching submodule to develop branch
```
git submodule foreach  '[ git checkout develop && git pull origin develop'
git submodule foreach  '[ git checkout master && git pull origin master'
```
## 5. Commands
```
wbc-docker/docker/docker-console.sh <container_name> - enter to the container via bash
wbc-docker/docker/docker-start.sh - run all containers
wbc-docker/docker/init-configs.sh - copy environment configuration from env-configs directory
```
## 5. Structure
| Directory                          | Description                                     |
|------------------------------------|-------------------------------------------------|
| wbc-docker/docker/docker-compose/  | All system components and links between them    |
| wbc-docker/docker/config/etc/nginx | Nginx configuration                             |
| wbc-docker/docker/provision/mysql  | MySQL configuration                             |
| wbc-docker/docker/env-configs/     | Environment configuration                       |
| wbc-docker/wbc-api/                | wbc-api submodule (external repository)         |
| wbc-docker/wbc-client/             | wbc-client submodule (external repository)      |
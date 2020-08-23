# WBC test project docker installation
```
This project shows my skills at:
- Configure runtime environment with docker
- Developing REST API with PHP Phalcon Framework
- Authentificate on client-side with Twig Framework
- Generate base client app with React (as a bonus)
- Work with MySQL migration via phinx library
- Auto-generating documentation from comments in code with apidoc nodejs library
```
## 1. Setup and run docker service
```
https://docs.docker.com/engine/install/
```
## 2. Check status
```
docker -v
docker-compose -v
```
## 3. Clone repository and install submodules
```
git clone git@bitbucket.org:fomazov/wbc-docker.git
cd wbc-docker
git submodule update --init --recursive
chmod +x ./docker/*.sh
```
## 4. Switching submodules to "develop" branch
```
git submodule foreach  '[ git checkout develop && git pull origin develop'
git submodule foreach  '[ git checkout master && git pull origin master'
```
## 5. Learn commands (optional)
```
wbc-docker/docker/docker-console.sh <container_name> - enter to the container via bash
wbc-docker/docker/docker-start.sh - run all containers
wbc-docker/docker/init-configs.sh - copy environment configuration from env-configs directory
wbc-docker/docker/docker-clear.sh - stop and delete all running containers, delete images
```
## 6. Learn structure (optional)
| Directory                          | Description                                     |
|------------------------------------|-------------------------------------------------|
| wbc-docker/docker/docker-compose/  | All system components and links between them    |
| wbc-docker/docker/config/etc/nginx | Nginx configuration                             |
| wbc-docker/docker/provision/mysql  | MySQL configuration                             |
| wbc-docker/docker/env-configs/     | Environment configuration                       |
| wbc-docker/wbc-api/                | wbc-api submodule (external repository)         |
| wbc-docker/wbc-client/             | wbc-client submodule (external repository)      |
## 7. Add hosts to your environment
```
127.0.0.1 api-wbc.fomazov.name
127.0.0.1 wbc.fomazov.name
```
- Windows:
> C:\Windows\System32\drivers\etc\hosts
- Linux:
> /etc/hosts
## 8. Copy environment configuration from env-configs directory
Application repository credentials-free, so we must import configs from external source to our project. 
As a bonus version files with build info generated here.
```
cd wbc-docker
./docker/init-configs.sh
```
## 9. Now all preparation complete and project ready to start
```
cd wbc-docker
./docker/docker-start.sh
```
## 10. Application ready to use
```
- wbc.fomazov.name - Application entry point
- api-wbc.fomazov.name - REST API + endpoint documentation
- vagran@127.0.0.1:3306 - MySQL instance
```
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
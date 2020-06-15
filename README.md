docker rm -f ovap
docker rmi kadashy/docker-ansible:latest
docker build -t kadashy/docker-ansible .
docker run --name ovap kadashy/docker-ansible:latest


docker rm -f ovap
docker build -t kadashy/docker-ansible .
docker run --name ovap kadashy/docker-ansible:latest


docker run --publish 8000:8080 --detach --name bb bulletinboard:1.0

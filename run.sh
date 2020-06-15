docker rm -f ovap
docker build -t kadashy/docker-ansible .
docker run --name ovap kadashy/docker-ansible:latest

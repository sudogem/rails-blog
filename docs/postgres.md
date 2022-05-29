### Running postgres in docker.   
$ docker run \
         --name postgresdb \
         -e POSTGRES_PASSWORD=webdevel \
         -p 5432:5432 \
         -d postgres:latest

### Running minimal postgres in docker.
$ docker run \
         --name postgresdb \
         -e POSTGRES_PASSWORD=webdevel \
         -p 5432:5432 \
         -d postgres:9.6.23-alpine

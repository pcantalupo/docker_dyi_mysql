#!/bin/bash
docker run --rm --name foo -e MYSQL_ROOT_PASSWORD=foo -d mysql

docker ps 

curl http://phamerator.webfactional.com/databases_Hatfull/Actinobacteriophage.sql > ./Actinobacteriophage.sql

docker exec -i foo mysql -u root --password=foo --execute "CREATE DATABASE Actinobacteriophage"

docker exec -i foo mysql -u root --password=foo Actinobacteriophage < Actinobacteriophage.sql

docker exec -it foo mysql -u root --password=foo --execute "select * from Actinobacteriophage.gene limit 0,2;"


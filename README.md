# docker_dyi_mysql

```
docker build -t dyimysql .
docker run --rm --name dyimysql -d dyimysql
docker ps
docker exec -it dyimysql mysql -u root --password=foo -e 'select * from Actinobacteriophage.gene limit 0,2;'
```

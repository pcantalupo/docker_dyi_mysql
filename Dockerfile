FROM ubuntu:18.04

RUN apt-get update && apt-get install -y mysql-server    # 5.2.27 nor .29 were not found
RUN apt-get install -y curl

RUN curl http://phamerator.webfactional.com/databases_Hatfull/Actinobacteriophage.sql > ./Actinobacteriophage.sql

COPY setup.sql /

RUN service mysql start && mysql < setup.sql && mysql -u root --password=foo Actinobacteriophage < Actinobacteriophage.sql

COPY bash_profile /

EXPOSE 3306

CMD ["mysqld"]

# Successfully build on Rigel Mac desktop
# Darwin Kernel Version 19.3.0: Thu Jan  9 20:58:23 PST 2020; root:xnu-6153.81.5~1/RELEASE_X86_64 x86_64

FROM ubuntu:18.04

COPY setup.sql bash_profile /

RUN apt-get update && apt-get install -y mysql-server curl && \
    curl http://phamerator.webfactional.com/databases_Hatfull/Actinobacteriophage.sql > ./Actinobacteriophage.sql && \
    service mysql start && \
    mysql < setup.sql && \
    mysql -u root --password=foo Actinobacteriophage < Actinobacteriophage.sql

EXPOSE 3306

CMD ["mysqld"]

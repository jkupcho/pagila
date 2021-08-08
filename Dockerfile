FROM postgres:13.3

ADD include/docker-entrypoint-initdb.d/ /docker-entrypoint-initdb.d/

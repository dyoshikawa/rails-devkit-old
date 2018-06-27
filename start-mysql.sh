#!/bin/bash
docker run --rm -d \
       -e MYSQL_ROOT_PASSWORD=secret \
       -e MYSQL_DATABASE=development \
       -v `pwd`/mysql-data:/var/lib/mysql \
       -p 3306:3306 \
       -u 1000:50 \
       dyoshikawa/mysql:latest

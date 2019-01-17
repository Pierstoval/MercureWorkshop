#!/usr/bin/env bash

mysql -u${MYSQL_USER} -p${MYSQL_PASSWORD} < /app/install.sql

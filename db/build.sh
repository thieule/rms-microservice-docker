#!/usr/bin/env bash

mysql -h mysql -u$MYSQL_USER -p$MYSQL_PASSWORD $MYSQL_DATABASE < /data/www/db/migrations/rms_2017-03-23.sql
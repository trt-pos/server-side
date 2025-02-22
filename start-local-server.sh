#!/bin/bash

cargo build

docker-compose -f docker-compose.yml up -d
export TRT_DB_CONN=mariadb://LOCAL_ADMIN:abc123.@localhost/theroundtable

sleep 5

./target/debug/server_side
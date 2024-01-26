#!/usr/bin/env bash

# 创建目录
mkdir -p ./rmqnamesrv/logs

mkdir -p ./rmqbroker/logs
mkdir -p ./rmqbroker/store

mkdir -p ./mysql/data

mkdir -p ./redis/data

# 设置目录权限
chmod -R 777 ./rmqnamesrv/logs
chmod -R 777 ./rmqbroker
chmod -R 777 ./mysql/data
chmod -R 777 ./redis/data

# 启动容器
docker compose up -d
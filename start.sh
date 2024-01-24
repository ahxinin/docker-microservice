#!/usr/bin/env bash

# 创建目录
mkdir -p ./rmqnamesrv/logs
mkdir -p ./rmqbroker/logs
mkdir -p ./rmqbroker/store

# 设置目录权限
chmod -R 777 ./rmqnamesrv
chmod -R 777 ./rmqbroker

# 启动容器
docker-compose up -d
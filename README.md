### 概述
容器化部署基础微服务，支持：
- RocketMQ(v4.9.7)
- MySQL(v8.3.0)


### 一键化部署
```
git clone git@github.com:ahxinin/docker-microservice.git

cd docker-microservice

sudo sh start.sh
```

### 访问地址
#### RocketMQ DashBoard: 
http://localhost:8080/#/login   (admin/admin)
#### MySQL
localhost:3306  (root/123456)

### 参考文档
- https://github.com/apache/rocketmq-docker
- https://github.com/apache/rocketmq-dashboard
- https://hub.docker.com/_/mysql
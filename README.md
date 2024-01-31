### 概述
容器化部署基础微服务，支持：
- RocketMQ(v4.9.7)
- MySQL(v8.3.0)
- Nacos(v2.3.0)
- Redis(v6.2.6)

### 准备工作
#### 安装Docker
```
curl -fsSL https://get.docker.com | bash -s docker --mirror AzureChinaCloud
```
#### 配置镜像源
- 打开配置文件
- 添加配置内容
- 重启Docker

```
sudo vim /etc/docker/daemon.json

{
   "registry-mirrors": [
   "https://mirror.ccs.tencentyun.com"
  ]
}

sudo systemctl restart docker
```

#### 设置代理
```
sudo docker pull dreamacro/clash

sudo docker run -d --name=clash -v "/home/ubuntu/dollarAirport.yaml:/root/.config/clash/config.yaml" -p "7890:7890" -p "9090:9090" --restart=unless-stopped dreamacro/clash
```
#### git使用代理
```
git config --global http.proxy http://127.0.0.1:7890
git config --global https.proxy https://127.0.0.1:7890
```

### 一键化部署
```
git clone https://github.com/ahxinin/docker-microservice.git

cd docker-microservice

sudo sh start.sh
```

### 访问地址
#### RocketMQ DashBoard: 
http://localhost:8080/#/login  (admin/admin)
#### MySQL
localhost:3306  (root/123456)
#### Nacos
http://localhost:8848/nacos  (nacos/nacos) 
#### Redis
localhost:6379 (123456)

### 参考文档
- https://github.com/apache/rocketmq-docker
- https://github.com/apache/rocketmq-dashboard
- https://hub.docker.com/_/mysql
- https://github.com/nacos-group/nacos-docker
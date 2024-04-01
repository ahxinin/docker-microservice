### 1.概述
容器化部署基础微服务，支持：
- RocketMQ(v4.9.7)
- MySQL(v8.3.0)
- Nacos(v2.3.0)
- Redis(v6.2.6)

### 2.准备工作
#### 2.1.安装Docker
```
curl -fsSL https://get.docker.com | bash -s docker --mirror AzureChinaCloud
```
#### 2.2.配置镜像源
```
1.打开配置文件
sudo vim /etc/docker/daemon.json

2.添加配置内容
{
   "registry-mirrors": [
   "https://mirror.ccs.tencentyun.com"
  ]
}

3.重启Docker
sudo systemctl restart docker
```

#### 2.3.设置Clash代理
将Clash配置文件拷贝到/home/ubuntu/airport.yaml
```
sudo docker pull dreamacro/clash

sudo docker run -d --name=clash -v "/home/ubuntu/airport.yaml:/root/.config/clash/config.yaml" -p "7890:7890" -p "9090:9090" --restart=unless-stopped dreamacro/clash
```
#### 2.4.Git使用代理
```
git config --global http.proxy http://127.0.0.1:7890
git config --global https.proxy https://127.0.0.1:7890
```

### 3.一键化部署
```
git clone https://github.com/ahxinin/docker-microservice.git

cd docker-microservice

sudo sh start.sh
```

### 4.访问地址
#### 4.1.RocketMQ DashBoard: 
http://localhost:8080/#/login  (admin/admin)
#### 4.2.MySQL
localhost:3306  (root/123456)
#### 4.3.Nacos
http://localhost:8848/nacos  (nacos/nacos) 
#### 4.4.Redis
localhost:6379 (123456)

### 5.安全
- 服务器运维管理面板：[1Panel](https://1panel.cn/)
- UFW(Ubuntu上的防火墙)无法进行有效阻止 docker 暴露的端口问题，推荐使用：[ufw-docker](https://github.com/chaifeng/ufw-docker)
- Web应用防火墙，[雷池WAF](https://waf-ce.chaitin.cn/docs/)

### 参考文档
- https://github.com/apache/rocketmq-docker
- https://github.com/apache/rocketmq-dashboard
- https://hub.docker.com/_/mysql
- https://github.com/nacos-group/nacos-docker
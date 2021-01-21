# docker-frp-sandbox
>**frpc：内网穿透客户端**
>
>**frps：内网穿透服务端**

## 使用方法
> 基于docker部署，前提是服务器预装 docker,docker-compose环境
>
> [基于CentOS系统的容器安装](https://github.com/kequandian/dev_docs/blob/master/ops/%E5%9F%BA%E4%BA%8ECentOS%E7%B3%BB%E7%BB%9F%E7%9A%84docker%E5%AE%B9%E5%99%A8%E5%AE%89%E8%A3%85%E6%AD%A5%E9%AA%A4.md)


#### 服务端部署
> docker ps 查看是否部署成功
>
> 同时占用 7000/tcp, 8000/http 端口
```
$ curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frps/docker-run.sh | bash -
```

#### 客户端部署
> 配置服务端地址 frpc.ini[common] server_addr=, 然后启动服务 `docker-compose up -d`
```
$ curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frpc/docker-run.sh | bash -
$ docker-compose up -d
```
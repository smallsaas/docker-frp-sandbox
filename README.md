# frp 内网穿透
> 详细参考 [基于Frp的内网穿透搭建](https://github.com/kequandian/dev_docs/blob/master/ops/%E5%9F%BA%E4%BA%8EFrp%E7%9A%84%E5%86%85%E7%BD%91%E7%A9%BF%E9%80%8F%E6%90%AD%E5%BB%BA.md) 说明
>
>**frpc：内网穿透客户端**
>
>**frps：内网穿透服务端**

### 使用方法
> 基于docker部署，前提是服务器预装 docker,docker-compose环境
>
> [基于CentOS系统的容器安装](https://github.com/kequandian/dev_docs/blob/master/ops/%E5%9F%BA%E4%BA%8ECentOS%E7%B3%BB%E7%BB%9F%E7%9A%84docker%E5%AE%B9%E5%99%A8%E5%AE%89%E8%A3%85%E6%AD%A5%E9%AA%A4.md)


#### 服务端部署
> 设置域名`raw.githubusercontent.com` IP
```
cat /etc/hosts
151.101.64.133 raw.githubusercontent.com
```
> 执行
```
curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frps/docker-run.sh | bash -
```
> docker ps 查看是否部署成功
>
> 同时占用 7000/tcp, 8000/http 端口


#### 客户端部署
> 配置服务端地址 frpc.ini[common] server_addr=, 然后启动服务 `docker-compose up -d`
```
curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frpc/docker-run.sh | bash -
docker-compose up -d
```

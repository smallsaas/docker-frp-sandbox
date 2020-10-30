# docker-frp-sandbox

>**frpc：内网穿透客户端**
>
>**frps：内网穿透服务端**

## 使用方法

- 使用`git clone https://github.com/smallsaas/docker-frp-sandbox.git`拉取代码至服务器
- 根据需要执行特定的`docker-build.sh`脚本文件生成镜像文件
- **替换 / 编辑** frp配置文件
- 执行`docker-compose up`启动容器
- 后台运行：`docker-compose up -d`
- 查看日志：`docker-compose logs`


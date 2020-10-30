docker build -f Dockerfile . -t frpc:latest
docker tag frpc:latest zelejs/frpc:latest
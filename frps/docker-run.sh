#!/bin/sh

curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frps/docker-compose.yaml -o docker-compose.yaml
curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frps/frps.ini -o frps.ini

echo docker-compose up -d 
docker-compose up -d 
echo docker ps
docker ps

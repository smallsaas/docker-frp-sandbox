#!/bin/sh

curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frpc/docker-compose.yaml -o docker-compose.yaml
curl -sL https://raw.githubusercontent.com/smallsaas/frp/master/frpc/frpc.ini -o frpc.ini

echo '# fisr config frpc.ini, and then run below..'
echo 'docker-compose up -d'

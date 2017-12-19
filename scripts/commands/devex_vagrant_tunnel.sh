#!/usr/bin/env sh

# Ports
# 3002 - Front End
# 3004 - Grape API
# 5432 - Postgres
# 6379 - Redis
# 9200 - ES
# 9250 - ES test cluster

ssh dvx-vagrant \
  -i $HOME/.vagrant.d/insecure_private_key \
  -R 3002:127.0.0.1:3002 \
  -R 3004:127.0.0.1:3004 \
  -L 5432:127.0.0.1:5432 \
  -L 6379:127.0.0.1:6379 \
  -L 9200:127.0.0.1:9200 \
  -L 9250:127.0.0.1:9250 \

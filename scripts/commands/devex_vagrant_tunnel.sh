#!/bin/bash

echo "$HOME/.vagrant.d/insecure_private_key"

ssh vagrant \
  -i $HOME/.vagrant.d/insecure_private_key \
  -R 3002:127.0.0.1:3002 `# Front End` \
  -R 3004:127.0.0.1:3004 `# Grape API` \
  -L 5432:127.0.0.1:5432 `# Postgres` \
  -L 6379:127.0.0.1:6379 `# Redis` \
  -L 9200:127.0.0.1:9200 `# ES` \
  -L 9250:127.0.0.1:9250 `# ES test cluster`


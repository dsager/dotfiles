URL="https://api.github.com/repos/docker/compose/releases/latest "
echo
echo "get latest docker compose version number from github:"
echo "  $URL"
LATEST_VERSION=$(curl -sL $URL | jq -r .tag_name)
echo "done"

URL="https://github.com/docker/compose/releases/download/$LATEST_VERSION/docker-compose-$(uname -s)-$(uname -m)"
echo
echo "get latest docker compose from github:"
echo "  $URL"
sudo curl -sL $URL -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "done"

# https://docs.docker.com/compose/completion/\#zsh
mkdir -p ~/.zsh/completion
URL="https://raw.githubusercontent.com/docker/compose/$LATEST_VERSION/contrib/completion/zsh/_docker-compose"
echo
echo "get docker compose ZSH completion from github:"
echo "  $URL"
curl -sL $URL > ~/.zsh/completion/_docker-compose
echo "done"

echo

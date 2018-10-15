#!/usr/bin/env sh

mkdir -p ~/.config/fish/completions/

# pass
URL="https://git.zx2c4.com/password-store/plain/src/completion/pass.fish-completion"
curl -sL $URL > ${HOME}/.config/fish/completions/pass.fish

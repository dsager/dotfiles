#!/usr/bin/env sh

code --install-extension adam-bender.commit-message-editor --force &&
code --install-extension castwide.solargraph --force &&
code --install-extension DavidAnson.vscode-markdownlint --force &&
code --install-extension dbaeumer.vscode-eslint --force &&
code --install-extension eamodio.gitlens --force &&
code --install-extension EdgardMessias.clipboard-manager --force &&
code --install-extension EditorConfig.EditorConfig --force &&
code --install-extension esbenp.prettier-vscode --force &&
code --install-extension formulahendry.code-runner --force &&
code --install-extension GitHub.vscode-pull-request-github --force &&
code --install-extension kaiwood.endwise --force &&
code --install-extension MateuszDrewniak.ruby-test-runner --force &&
code --install-extension mhutchie.git-graph --force &&
code --install-extension ms-azuretools.vscode-docker --force &&
code --install-extension ms-vscode-remote.remote-containers --force &&
code --install-extension pavlitsky.yard --force &&
code --install-extension rebornix.ruby --force &&
code --install-extension redhat.vscode-yaml --force &&
code --install-extension sianglim.slim --force &&
code --install-extension streetsidesoftware.code-spell-checker --force &&
code --install-extension wingrunr21.vscode-ruby --force &&
code --install-extension xxamxx.vscode-rubygems --force &&
code --install-extension yzhang.markdown-all-in-one --force

# extensions that need to be downloaded manually:
xdg-open "https://marketplace.visualstudio.com/items?itemName=Lourenci.go-to-spec"

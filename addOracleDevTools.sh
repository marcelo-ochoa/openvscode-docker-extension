#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
export NODE_MAJOR=20
sudo apt update
sudo apt install -y libicu70
openvscode-server --force --install-extension=Oracle.oracledevtools --install-extension=ms-dotnettools.vscode-dotnet-runtime

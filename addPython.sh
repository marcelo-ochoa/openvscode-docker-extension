#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt install -y python3-pip python3-venv
openvscode-server --force --install-extension=ms-python.python

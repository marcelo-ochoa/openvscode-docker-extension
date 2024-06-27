#!/bin/bash
export DEBIAN_FRONTEND=noninteractive

sudo apt-get update
sudo apt install -y python3-pip python3-venv
echo "Add Python extension by running in OpenVS Code Terminal"
echo "  openvscode-server --force --install-extension=ms-python.python"

#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
export NODE_MAJOR=20
sudo apt-get update
sudo apt install -y ca-certificates-java openjdk-25-jdk
echo "Add Java extension by running in OpenVS Code Terminal"
echo "  openvscode-server --force --install-extension=redhat.java --install-extension=vscjava.vscode-java-debug --install-extension=vscjava.vscode-java-test --install-extension=vscjava.vscode-maven --install-extension=vscjava.vscode-java-dependency"

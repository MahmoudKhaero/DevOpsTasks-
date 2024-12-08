#!/bin/bash

sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common
sudo apt-get install -y containerd
sudo systemctl start containerd
sudo systemctl enable containerd
containerd --version

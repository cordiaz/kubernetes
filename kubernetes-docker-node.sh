#!/bin/bash
sudo apt-get update -y
sudo apt install docker.io -y
sudo systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt install curl -y
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt-get update -y
sudo apt install kubeadm -y
sudo swapoff -a
sudo kubeadm join 172.31.15.190:6443 --token cabavm.byo6niaxg2okm2k6 \
    --discovery-token-ca-cert-hash sha256:cc73b883940615be2fb8cf2c0d4d860c6021dce139340702a50cb32002fb1f7e
echo "selesai"

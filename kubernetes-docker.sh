#!/bin/bash
sudo apt-get update -y
sudo apt install docker.io -y
sudo systemctl enable docker
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
sudo apt install curl -y
sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
sudo apt install kubeadm -y
sudo swapoff -a
sudo kubeadm join 172.31.3.217:6443 --token b8dv02.r6lgrai137fhyciz \
    --discovery-token-ca-cert-hash sha256:91397fea9e42dc7a75409ebebbe83d5ded1c12e02681a4716f54e0247b8b256a 
echo "selesai"

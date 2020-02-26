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
echo "selesai"

#	lanjutkan dgn ganti nama master instance bila perlu "sudo hostnamectl set-hostname master-node"
#	initialize Kubernetes on the master node: "sudo kubeadm init --pod-network-cidr=10.244.0.0/16"
#	$ mkdir -p $HOME/.kube
#	$ sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#	$ sudo chown $(id -u):$(id -g) $HOME/.kube/config   

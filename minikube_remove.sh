#!/usr/bin/env bash

minikube stop
minikube delete
docker stop (docker ps -aq)
rm -r ~/.kube ~/.minikube
sudo rm /usr/local/bin/localkube /usr/local/bin/minikube
launchctl stop '*kubelet*.mount'
sudo rm -rf /etc/kubernetes/

# docker system prune -af --volumes

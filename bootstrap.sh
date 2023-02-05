## Script to setup K8s Cluster

kubeadm init --apiserver-advertise-address $(hostname -i)
mkdir -p $HOME/.kube
chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -n kube-system -f \
    "https://github.com/weaveworks/scope/releases/download/v1.13.2/k8s-scope.yaml"

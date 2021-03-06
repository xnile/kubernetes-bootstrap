#https://godoc.org/k8s.io/kubernetes/cmd/kubeadm/app/apis/kubeadm/v1beta2
apiVersion: kubeproxy.config.k8s.io/v1alpha1
kind: KubeProxyConfiguration
mode: ipvs
---
apiVersion: kubeadm.k8s.io/v1beta2
kind: ClusterConfiguration
apiServer:
  certSANs:
  - K8SHA_HOST1
  - K8SHA_HOST2
  - K8SHA_HOST3
  - K8SHA_VHOST
  - K8SHA_IP1
  - K8SHA_IP2
  - K8SHA_IP3
  - K8SHA_VIP
controlPlaneEndpoint: "K8SHA_VIP:16443"
imageRepository: "gcr.azk8s.cn/google_containers"
networking:
  # This CIDR is a Calico default. Substitute or remove for your CNI provider.
  podSubnet: "K8SHA_CIDR"
  serviceSubnet: "K8SSVC_CIDR"

## Kubernete
1. its Container Orchestration Engine(CoE).
2. Kuberentes Cluster: Combination of Multiple nodes(Master and worker node)
3. Kuberentes components ![k8s archirecture](./Architecture.png)
   1. Master Node Components(Control Plane):
       1. Kube API Server: its fron-end of the kubernetes control plane
       2. ETCD: its store the cluster data, storing in the form of key: value pair
       3. Kube-Schedular: kube-schedular responisible for assiging nodes on newly cretaed pods based on resource(CPU and RAM), policy constrains and node affinity.
       4. Control Manager: its maiantaining the current state = desire state 
           eg: replicas: 5 in cluster 4 pods 
   2. Worker Node Components
       1. Kubelet: its Agent run on every node in the cluster, its ensure containers running in the Pod and send reports to control plane
       2. Kube-Proxy
       3. Container Run Time(continerD, Docker Engine) 

## K8s Cluster:
  1. Bare metal: You need to do from the scratch
  2. Mini-kube: single node k8s cluster
  3. Kubeadm: single control plane and multi-node, Multi-control plane and multi-node
  4. Kube-spray: single control plane and multi-node, Multi-control plane and multi-node
  5. EKS(Elastic Kubernetes Service)-AWS PAAS
  6. AKS(Azure Kubernetes Service)- AZURE PASS
  7. GKE(Google Kuberntes Engine)- GCP PAAS

## Ports Info [ports](https://kubernetes.io/docs/reference/networking/ports-and-protocols/)

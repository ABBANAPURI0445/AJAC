## Kubeadm
1. install Docker Engines on each node [docker](https://www.cherryservers.com/blog/install-docker-ubuntu-22-04)
2. install below tools
   ```
   sudo apt-get update
   # apt-transport-https may be a dummy package; if so, you can skip that package
   sudo apt-get install -y apt-transport-https ca-certificates curl gpg
   curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.30/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
   echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.30/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
   sudo apt-get update
   sudo apt-get install -y kubelet kubeadm kubectl
   sudo apt-mark hold kubelet kubeadm kubectl
   sudo systemctl enable --now kubelet
   ``` 
3. Configuring CRI runtime
   ```
   wget https://github.com/Mirantis/cri-dockerd/releases/download/v0.3.14/cri-dockerd_0.3.14.3-0.ubuntu-jammy_amd64.deb
   sudo dpkg -i cri-dockerd_0.3.14.3-0.ubuntu-jammy_amd64.deb 
   ``` 
4. Choose your masternode become a root user ```kubeadm init --cri-socket unix:///var/run/cri-dockerd.sock``` 
5. execute below commands as folloing instructions
   ```
        Your Kubernetes control-plane has initialized successfully!
     
     To start using your cluster, you need to run the following as a regular user:
     
       mkdir -p $HOME/.kube
       sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
       sudo chown $(id -u):$(id -g) $HOME/.kube/config
     
     Alternatively, if you are the root user, you can run:
     
       export KUBECONFIG=/etc/kubernetes/admin.conf
     
     You should now deploy a pod network to the cluster.
     Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
       https://kubernetes.io/docs/concepts/cluster-administration/addons/
     
     Then you can join any number of worker nodes by running the following on each as root:
     
     kubeadm join 10.0.0.27:6443 --token acny4q.a1fn497tldl4mss5 --discovery-token-ca-cert-hash sha256:c7b6b0868c9d63e61d12c1e3b5f95f41d22f4c95ec8289349babca974d135bb1  --cri-socket unix:///var/run/cri-dockerd.sock
  ```

  ## Apply Pod Network
  kubectl apply -f https://reweave.azurewebsites.net/k8s/v1.30/net.yaml

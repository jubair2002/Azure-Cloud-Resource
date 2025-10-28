#install kubectl in windows
choco install kubernetes-cli

#install kubectl in linux
    sudo apt update
    sudo apt install -y ca-certificates curl apt-transport-https
    curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
    echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
    sudo apt update
    sudo apt install -y kubectl
  # Verify the installation.
  kubectl version --client
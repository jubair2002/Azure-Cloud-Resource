Docker Installation Guide for Linux
Ubuntu/Debian Installation (Recommended Method)

Step 1: Remove Old Docker Versions
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do 
    sudo apt-get remove $pkg; 
done
Step 2: Update System and Install Prerequisites
sudo apt-get update
sudo apt-get install ca-certificates curl gnupg lsb-release

Step 3: Add Docker's Official GPG Key
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

Step 4: Add Docker Repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

Step 5: Update Package Index
sudo apt-get update

Step 6: Install Docker Engine
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

Step 7: add user to docker group 
sudo usermod -aG docker $USER
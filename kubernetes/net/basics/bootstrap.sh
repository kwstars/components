#!/bin/bash
set -v
set -e

# Change the apt source to Aliyun
sudo sed -i 's#http://archive.ubuntu.com#https://mirrors.aliyun.com#' /etc/apt/sources.list

# Install the necessary tools
sudo apt-get update -qq && sudo apt-get install -y bridge-utils net-tools bash-completion make apt-transport-https ca-certificates curl software-properties-common

# Install ContainerLab
bash -c "$(curl -sL https://get.containerlab.dev)"
# bash -c "$(curl -sL https://get.containerlab.dev)" -- -v 0.54.0

# Install Docker
curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | sudo apt-key add -
if ! grep -q "^deb .*docker-ce" /etc/apt/sources.list /etc/apt/sources.list.d/*; then
  sudo add-apt-repository "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
fi
sudo apt-get update -qq && sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo usermod -aG docker vagrant
cat <<EOF | sudo tee /etc/docker/daemon.json
{
  "registry-mirrors": ["https://registry.docker-cn.com"]
}
EOF
sudo systemctl restart docker

# Download Docker completion script
sudo curl -L https://raw.githubusercontent.com/docker/cli/master/contrib/completion/bash/docker -o /etc/bash_completion.d/docker
clab completion bash | sudo tee /etc/bash_completion.d/clab >/dev/null

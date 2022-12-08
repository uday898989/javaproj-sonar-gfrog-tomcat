# Setup Hostname

hostnamectl set-hostname "docker.cloudbinary.io"


# Configure Hostname unto hosts file

echo "`hostname -I | awk '{ print $1}'` `hostname`" >> /etc/hosts


# Update Ubuntu Operating System Repository

sudo apt-get update


# Download, Install & Configure Utility Softwares

sudo apt-get install git curl unzip tree wget -y


# Install Docker on Ubuntu Server

sudo apt-get install docker.io -y


# Enable Docker For Ubuntu User

sudo usermod -aG docker ubuntu

sudo usermod -aG docker osboxes


# Grant Access

sudo chmod 766 /var/run/docker.sock


# Enable Docker Services at boot level

sudo systemctl enable docker


# Restart Docker Daemon

sudo systemctl restart docker


# To Restart SSM Agent on Ubuntu

sudo systemctl restart snap.amazon-ssm-agent.amazon-ssm-agent.service
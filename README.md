# Build your WSL workstation
Setup a wsl environnement with a collection of ansible playbook for each type of projects

## Step 1 - Install WSL + Ubuntu

```powershell
wsl --install -d Ubuntu-22.04
```

## Step 2 - Install ssh, git and ansible

```bash
sudo apt update
sudo apt install -y openssh-client git ansible
git --version
ansible --version
```
## Step 3 - Create SSH key

```bash
ssh-keygen -t ed25519 -C "ton@email"
cat ~/.ssh/id_ed25519.pub
```

## Step 4 - Clone repository

```bash
git clone git@github.com:diplomegalo/wsl-workstation.git ~/wsl-workstation
cd ~/wsl-workstation
```
## Step - Run playbooks

### Basics 


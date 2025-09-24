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
## Step 5 - Ansible Roles Overview

The repository includes several Ansible roles located in the `/roles` directory. Each role is designed to automate the setup of specific tools or environments for your WSL workstation.

### Example Roles

- **common**: Installs essential packages and configures basic system settings.
- **docker**: Installs Docker and configures it for use within WSL.
- **nvim**: Configures Vim/Neovim with plugins and settings for enhanced productivity.

You can review each role's README or `tasks/main.yml` for details on what is installed and configured.

## Step 6 - Running Playbooks

To apply a role, run the corresponding playbook. For example, to set up the basics:

```bash
ansible-playbook playbooks/basics.yml

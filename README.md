# Ubuntu 18.04 Ansible setup

Set of bash scripts and Ansible playbooks to setup and config Ubuntu 18.04 server

This setup uses [Ansible Galaxy](https://galaxy.ansible.com/) roles 🌌

Hardening part based on: https://ulayer.net/blog/2019/08/02/how-to-harden-ssh-configs-with-ansible-on-linux/
Kubernetes bases on: https://github.com/geerlingguy/ansible-role-kubernetes

## Steps

1. Setup hosts file
2. Copy over public SSH key to server `ssh-copy-id -i ~/.ssh/id_rsa.pub decoder@192.168.178.36`
3. Install ansible and playbooks on local machine (assuming Ubuntu Linux)

```bash
    git clone https://github.com/Piotr1215/ubuntu-setup.git
    cd ubuntu-setup
    chmod +x 1-install-ansible.sh
    ./1-install-ansible.sh
```

4. Run playbooks in from setup first, than from hardening folder.

```bash
    ansible-playbook -i hosts --ask-become-pass ./setup/install-essencials.yml
    ansible-playbook -i hosts --ask-become-pass ./setup/oh-my-zsh.yml
    ansible-playbook -i hosts --ask-become-pass ./infrastructure/kubernetes.yml

    ansible-playbook -i hosts --ask-become-pass ./hardening/playbook.yml
```

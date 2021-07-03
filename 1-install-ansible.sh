
sudo apt update
sudo apt install python3-pip -y
sudo pip3 install ansible

ansible-galaxy install dev-sec.ssh-hardening
ansible-galaxy install viasite-ansible.zsh --force

echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc

source ~/.zshrc
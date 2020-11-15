
sudo apt-get update

sudo apt install software-properties-common

sudo apt-add-repository --yes --update ppa:ansible/ansible

sudo apt install ansible

echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc

source ~/.zshrc
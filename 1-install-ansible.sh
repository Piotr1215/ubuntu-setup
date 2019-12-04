
sudo apt-get -y install python-pip python-dev libffi-dev libssl-dev

pip install ansible --user

echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.bashrc
echo 'PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc

source .zshrc
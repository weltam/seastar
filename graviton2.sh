sudo yum update -y

sudo yum groupinstall "Development Tools" -y

sudo su 

pip3 install meson ninja pyelftools cmake

export PATH=$PATH:/usr/local/bin
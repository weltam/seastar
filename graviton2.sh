sudo yum update -y

sudo yum groupinstall "Development Tools" -y

sudo su 

pip3 install meson ninja pyelftools cmake

sudo yum install git perf gcc10 gcc10-c++ numactl-devel openssl-devel -y

export PATH=$PATH:/usr/local/bin
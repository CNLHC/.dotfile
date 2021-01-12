

wget https://cnpublicstatic.cnworkshop.xyz/Python-3.9.1.tgz
tar xzvf Python-3.9.1.tgz
cd Python-3.9.1
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
./configure --enable-optimizations --enable-shared
make -j8
make altinstall

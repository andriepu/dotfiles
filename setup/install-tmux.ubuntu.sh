sudo apt update

sudo apt install -y git

sudo apt install -y automake
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev
sudo apt install -y xclip

rm -fr /tmp/tmux

git clone https://github.com/tmux/tmux.git /tmp/tmux

cd /tmp/tmux

# Tmux 2.6
git reset --hard bd71cbb

sh autogen.sh

./configure && make

sudo make install

cd -

rm -fr /tmp/tmux



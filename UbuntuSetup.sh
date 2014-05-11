# ===================== manual settings ================:
# auto hide launcher bar (doesn't work in VirtualBox):
#System Settings->Appearence->Behavior->Auto-hide the Launcher

# increase key repeat:
#System Settings->Keyboard:
#	Set Delay to a little above short and Speed all the way fast

# =========== Setup rsa key for GitHub =================:
# cd ~/.ssh
# ls -al
# ssh-keygen -t rsa -C "docdem12@gmail.com"
# ssh-add ~/.ssh/id_rsa
# pbcopy < ~/.ssh/id_rsa.pub

# ====================== Git Setup =====================:
# sudo apt-get install git
# git clone git://github.com/docdem12/UbuntuSetup
# cd UbuntuSetup


# update current packages
sudo apt-get update
sudo apt-get upgrade

# install new packages
sudo apt-get install vim
sudo apt-get install byobu
sudo apt-get install python3-pip
sudo apt-get install tree
sudo apt-get install zsh
sudo apt-get install chromium

# python packages
pip install ipython3
pip install virtualwrapper

# setup config files
cp .vimrc ~/
cp .zshrc ~/
cp .aliases ~/
source .zshrc


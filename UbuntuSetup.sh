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
#sudo apt-get install chromium

sudo wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

# python packages
sudo pip3 install ipython3
sudo pip3 install virtualenvwrapper

# setup config files
cp .zshrc ~/
cp .aliases ~/

# setup vim
git clone git://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
cp my_configs.vim ~/.vim_runtime

chsh -s `which zsh`

echo 'NEXT STEPS: $> sudo shutdown -r 0 \
                  $> source .zshrc'


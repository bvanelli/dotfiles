# Add ppas
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update

# Install git dependencies
sudo apt install -y curl git subversion zsh unity-tweak-tool
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install paper Icon theme
sudo apt-get install -y paper-icon-theme

# Install black theme
mkdir -p $HOME/.themes
cd $HOME/.themes
git clone https://github.com/vooze/arc-black-ubuntu .

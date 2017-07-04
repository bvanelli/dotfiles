# Add ppas
sudo add-apt-repository ppa:snwh/pulp
sudo apt-get update

# Install git dependencies
sudo apt install -y git subversion zsh unity-tweak-tool

# Install paper Icon theme
sudo apt-get install -y paper-icon-theme

# Install black theme
mkdir -p $HOME/.themes
cd $HOME/.themes
git clone https://github.com/vooze/arc-black-ubuntu .

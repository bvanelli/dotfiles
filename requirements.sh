# Add ppas
sudo add-apt-repository ppa:snwh/pulp

# Install git dependencies
sudo apt install -y curl git subversion zsh gnome-tweak-tool chrome-gnome-shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install paper Icon theme
sudo apt-get install -y paper-icon-theme

# Install black theme
mkdir git && cd git
git clone https://github.com/vinceliuice/Yosemite-gtk-theme.git
cd Yosemite-gtk-theme
./Install

# prompt install dash to panel
firefox https://extensions.gnome.org/extension/1160/dash-to-panel/

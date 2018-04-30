# Installation

Install curl

```bash
apt install curl
```

Run requirements

```bash
curl -Lks https://raw.githubusercontent.com/bvanelli/dotfiles/gnome/requirements.sh | /bin/bash
```

Clone configs

```bash
curl -Lks https://raw.githubusercontent.com/bvanelli/dotfiles/master/install.sh | /bin/bash
```
Now load the dconf configuration

```bash
cd ~/dconf
./load.sh
```

My personal setup. This document expects you to use a apt-get on a Debian based Linux distro but it should be fairly straight forward to use with other package managers.

## My zsh theme

![lig: Lemmy Is God](https://raw.githubusercontent.com/peteraba/dotfiles/master/screenshot/lim.png)

### Install as standalone

```zsh
wget https://raw.github.com/peteraba/dotfiles/master/zsh/themes/lig.zsh-theme
```

## My dotfiles

### Prerequisite

```zsh
# Install ohmyz.sh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

```zsh
# Install linux essentials
sudo apt-get install tree
```

#### VIM

```
pip install pycodestyle
sudo apt-get install exuberant-ctags
go get -u github.com/jstemmer/gotags
sudo apt-get install python-pip
pip install tzlocal
```

### Installation

```zsh
git clone --recursive git@github.com:peteraba/dotfiles.git ~/dotfiles
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/scripts ~/scripts
ln -s ~/dotfiles/fonts ~/.fonts
```

### Go


```zsh
sudo apt-get install bison
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)
gvm install go1.4 -B
gvm use go1.4
export GOROOT_BOOTSTRAP=$GOROOT
last_go_stable="$(gvm listall | grep '^\s*go[0-9\.]*$' | sort --version-sort | tail -n 1)"
last_go_unstable="$(gvm listall | grep '^\s*go[0-9\.]*' | sort --version-sort | tail -n 1)"
gvm install "${last_go_stable}"
gvm install "${last_go_unstable}"
gvm use "${last_go_unstable}" --global
```

### Rust

```zsh
curl -L https://raw.github.com/sdepold/rsvm/master/install.sh | sh
last_rust_stable="$(rsvm ls-remote | grep '^[0-9\.]*$' | sort --version-sort | tail -n 1)"
last_rust_unstable="$(rsvm ls-remote | grep '^[0-9\.]*' | sort --version-sort | tail -n 1)"
rsvm install "${last_rust_stable}"
rsvm install "${last_rust_unstable}"
```

## Optional things

### Linux

*Think twice about using this, it will remove all your existing configs!*

```zsh
cp -rf ~/.config/chromium/ ~/dotfiles/linux/default/
rm -rf ~/.config
ln -s ~/dotfiles/linux/default ~/.config
```

### Linux essentials

```zsh
ln -s ~/dotfiles/gtkrc-2.0 ~/.gtkrc-2.0
sudo apt-get install htop
```

### i3 essentials

We need:
 - `i3` is probably trivial
 - `i3blocks` is a nice looking bar for i3
 - `feh` is used for displaying an image file as wallpaper
 - `arandr` is a visual tool for monitor setup which creates bash scripts to instruct xrandr
 - `lxappearance` is a visual tool for gtk appearance configuration
 - `rofi` is a menu system for i3 which can replace dmenu
 - `playerctl` can be used to adjust the volume
 - `rxvt` minimalistic, highly configurable terminal emulator
 - `psutil` for some i3 status bars

```zsh
sudo apt-get install i3 feh arandr lxappearance rofi rxvt
wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb
sudo dpkg -i playerctl-0.5.0_amd64.deb
pip install psutil
```

#### light

```
sudo apt-get install help2man
git clone https://github.com/haikarainen/light.git
cd light
make
sudo make install
cd ..
rm -rf light
```

#### vifm

```
sudo apt-get install vifm
ln -s ~/dotfiles/vifm ~/.vifm
```

#### vlc

```
sudo apt-get install vlc
```

#### ffmpeg

```
sudo apt-get install ffmpeg
```

#### java

```
sudo apt-get install openjdk-9-jre
```

#### mplayer

```
sudo apt-get install mplayer
```

#### docker

[Official installation instructions here.](https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/).

```
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce
pip install docker-compose
sudo usermod -aG docker $USER
```

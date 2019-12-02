# devenv
Developer Environment

### ZSH Theme Setup
```
git clone --single-branch --branch next https://github.com/bhilburn/powerlevel9k.git ~/.powerlevel9k
```

### Install Nerd Fonts
unzip contents of Fonts.zip to `~/.local/share/fonts` (Ubuntu) or `~/Library/Fonts` (MacOS)

### VIM Setup
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

:PlugInstall
```

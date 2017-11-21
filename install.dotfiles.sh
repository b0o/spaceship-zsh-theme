#!/bin/bash

[[ ! $DOTFILESINSTALL ]] && echo "Error: Must be installed with dotfiles/install.sh" && exit 1

git clone https://github.com/denysdovhan/spaceship-zsh-theme.git $VENDORDIR/spaceship-zsh-theme

ln -s $VENDORDIR/spaceship-zsh-theme/spaseship.zsh $BASEDIR/zsh-custom/theme/spaceship.zsh-theme

#!/bin/bash

[[ ! $DOTFILESINSTALL ]] && echo "Error: Must be installed with dotfiles/install.sh" && exit 1

install_path="$VENDORDIR/spaceship-zsh-theme"
link_path="$BASEDIR/zsh-custom/themes/spaceship.zsh-theme"

[[ ! -d $install_path ]] && {
	git clone https://github.com/denysdovhan/spaceship-zsh-theme.git $install_path
} || {
	cd $install_path
	git pull origin master
}

[[ ! -e $link_path ]] && {
	ln -s $VENDORDIR/spaceship-zsh-theme/spaseship.zsh $link_path
}

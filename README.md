# dotfiles

## Installation #

    git clone git://github.com/kevinbowen777/dotfiles.git

Where possible, Vim plugins are installed as git submodules. Check these out by
running the commands:

    cd dotfiles
    git submodule init
    git submodule update

Create symlinks:

    ln -s ~/dotfiles/bash/bashrc ~/.bashrc
	ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile
	ln -s ~/dotfiles/bash/profile ~/.profile
    ln -s ~/dotfiles/bash/inputrc ~/.inputrc
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
	ln -s ~/dotfiles/bash/Xresources ~/.Xresources
	ln -s ~/dotfiles/ipython/ipython_config ~/.ipython/profile_default/ipython_config.py
    ln -s ~/dotfiles/ipython/vars_ids.py ~/.local/lib/vars_ids.py

Vim's backup and swap files are stored in `~/tmp`, so that directory must exist.

    mkdir ~/tmp
    mkdir ~/tmp/.backup
    mkdir ~/tmp/.swp
    mkdir ~/tmp/.undo
      
## VIM #

Preferences for Vim are stored in `dotfiles/vim/vimrc` and `dotfiles/vim/gvimrc`
respectively. All plugins and scripts are stored in the `dotfiles/vim`
directory.

## Powerline plug-in installation
The current vim configuration depends upon having the powerline plug-in
installed. The .bashrc and .tmux.conf files have the necessary code to run with powerline; but, they are currently commented out.

To install powerline:
	sudo pip install git+git://github.com/Lokaltog/powerline

For detailed instructions, [see the wiki](https://github.com/kevinbowen777/dotfiles/wiki/Powerline-Plugin-Installation-Instructions).

### Adding Plugin Bundles ##

Plugins that are published on github can be installed as submodules. For
example, to install the [Nerdtree bundle](http://github.com/scrooloose/nerdtree.git), follow these steps:

    cd ~/dotfiles
    git submodule add http://github.com/scrooloose/nerdtree.git/vim/bundle/nerdtree 

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/nerdtree"]
        path = vim/bundle/nerdtree
        url = http://github.com/scrooloose/nerdtree.git

This will also checkout out the git repo into the `vim/bundle/nerdtree` directory.

Commit these changes as follows:

    git add .
    git commit -m "Added the nerdtree plug-in."
    git push origin master

N.B.: 

On first run of tmux, remember to initialize your tmux plugins. Before 
starting any sessions, enter `<prefix>+<shift>+<I>`.

## License
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

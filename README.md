# dotfiles

## Installation #

    git clone git://github.com/kevinbowen777/dotfiles.git

Create symlinks:

    ln -s ~/dotfiles/bash/bashrc ~/.bashrc
    ln -s ~/dotfiles/bash/bash_aliases ~/.bash_aliases
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
    ln -s ~/dotfiles/bash/dir_colors ~/.dir_colors
    ln -s ~/dotfiles/python/pythonstartup ~/.pythonstartup
    ln -s ~/dotfiles/gtk/gtk.css ~/.config/gtk-3.0/gtk.css
    ln -s ~/dotfiles/python/ruff/pyproject.toml ~/.config/ruff/pyproject.toml
    ln -s ~/dotfiles/ruby/irbrc ~/.irbrc
    ln -s ~/Dropbox/personal/administrativa/vimwiki ~/docs/vimwiki
    ln -s ~/dotfiles/config/zathura/zathurarc ~/.config/zathura/zathurarc
    ln -s ~/dotfiles/config/user-dirs.dirs ~/.config/user-dirs.dirs

Vim's backup and swap files are stored in `~/tmp`, so that directory must exist.

    mkdir ~/tmp
    mkdir ~/tmp/.backup
    mkdir ~/tmp/.swp
    mkdir ~/tmp/.undo

## VIM #

Preferences for Vim are stored in `dotfiles/vim/vimrc` and `dotfiles/vim/gvimrc`
respectively. Plugins and scripts are stored in the `dotfiles/vim/bundle`
directory.

## Powerline plug-in installation
The current vim configuration depends upon having the powerline plug-in
installed.

To install powerline:
    Where possible, just use the package available in the current, active
    distro. If that is not possible, try:
    ```
	pip install --user git+git://github.com/Lokaltog/powerline
    ```
For detailed instructions, [see the wiki](https://github.com/kevinbowen777/dotfiles/wiki/Powerline-Plugin-Installation-Instructions).

### Adding Plugin Bundles ##

N.B.: As of 202201, plugins are installed using
[vim-plug](https://github.com/junegunn/vim-plug)

N.B.: 

On first run of tmux, remember to initialize your tmux plugins. Before 
starting any sessions, enter `<prefix>+<shift>+<I>`.

## License
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# dotfiles

## Installation

    git clone git://github.com/kevinbowen777/dotfiles.git

Create symlinks:

    ln -s ~/dotfiles/bash/bashrc ~/.bashrc
    ln -s ~/dotfiles/bash/bash_aliases ~/.bash_aliases
    ln -s ~/dotfiles/bash/bash_profile ~/.bash_profile
    ln -s ~/dotfiles/bash/dir_colors ~/.dir_colors
    ln -s ~/dotfiles/bash/lesskey ~/.lesskey
    ln -s ~/dotfiles/bash/profile ~/.profile
    ln -s ~/dotfiles/bash/inputrc ~/.inputrc
    ln -s ~/dotfiles/bash/shellcheckrc ~/.shellcheckrc
    ln -s ~/dotfiles/bash/Xresources ~/.Xresources
    ln -s ~/dotfiles/config/zathura/zathurarc ~/.config/zathura/zathurarc
    ln -s ~/dotfiles/config/user-dirs.dirs ~/.config/user-dirs.dirs
    ln -s ~/dotfiles/config/ctags ~/.ctags
    ln -s ~/dotfiles/git/git-completion.bash ~/.git-completion.bash
    ln -s ~/dotfiles/gtk/gtk.css ~/.config/gtk-3.0/gtk.css
    ln -s ~/dotfiles/ipython/ipython_config ~/.ipython/profile_default/ipython_config.py
    ln -s ~/dotfiles/ipython/vars_ids.py ~/.local/lib/vars_ids.py
    ln -s ~/dotfiles/python/pythonstartup ~/.pythonstartup
    ln -s ~/dotfiles/python/ruff/pyproject.toml ~/.config/ruff/pyproject.toml
    ln -s ~/dotfiles/ruby/irbrc ~/.irbrc
    ln -s ~/dotfiles/tmux/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/vim/vimrc ~/.vimrc
    ln -s ~/dotfiles/vim/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/nvim ~/.config/nvim/init.vim
    ln -s ~/Dropbox/personal/administrativa/vimwiki ~/docs/vimwiki

### NVIM & VIM notes

Nvim/Vim's backup, swap, and undo files are stored in `~/tmp/nvim` and `~/tmp/vim`, respectively. Create the required directories with the following command:

    mkdir -p ~/tmp/{nvim,vim}/{.backup,.swp,.undo}

### Tmux note

On first run of tmux, remember to initialize your tmux plugins. Before starting any sessions, enter `<prefix>+<shift>+<I>`.

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

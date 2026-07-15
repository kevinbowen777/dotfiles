" ------------------------------------------------------------------------- "
"
" name: init.vim
" purpose: Set neovim configuration
" requirements:
"
" version: 0.01
" author: Kevin Bowen kevin.bowen@gmail.com
"
" updated:
" created: 20260601
"
" ------------------------------------------------------------------------- "

set runtimepath^=~/.vim runtimepath+=~/.vim/after

let &packpath = &runtimepath

let g:loaded_perl_provider = 0
let g:loaded_ruby_provider = 0
" let g:python3_host_prog = expand( trim (system('command -v python3')) )

source ~/.vimrc

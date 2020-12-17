#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

set nu
set clipboard=unnamed

autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror

autocmd VimEnter * wincmd w

" 退出编辑窗口时自动退出附加窗口
autocmd BufEnter * if 0 == len(filter(range(1, winnr('$')), \'empty(getbufvar(winbufnr(v:val), "&bt"))\')) | qa! | endif' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"

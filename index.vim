"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" Personal vimrc repo, version controled but always master
"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
"   \_/ |_|_| |_| |_|_|  \___|
"
" Author: vipzhicheng@gmail.com
" Help: HELP.md
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 自动加载插件系统，由于网络问题，还是将插件管理器代码放到项目中
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" if empty(glob('~/.config/vimrc/autoload/plug.vim'))
" 	silent !curl -fLo ~/.config/vimrc/autoload/plug.vim --create-dirs
" 				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" 	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
" endif

" 设置运行时目录
set runtimepath+=~/.config/vimrc

" 加载运行时目录中的文件

" VIM plug: VIM plugin manager
" runtime plug.vim

" Configuration
runtime basic.vim

" 加载本地个性化配置
try
runtime local.vim
catch
endtry

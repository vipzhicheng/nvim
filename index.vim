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

" autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

" 设置运行时目录
set runtimepath+=~/.config/vimrc

" 加载插件管理器
runtime autoload/plug.vim

" 配置加载
runtime plug.vim " 加载插件和插件配置，里面可能包含插件定义的快捷键
runtime key.vim " 加载本项目自定义快捷键
runtime basic.vim " 加载基本配置

" 加载本地配置，不会提交到仓库
try
runtime local.vim
catch
endtry

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

" 设置运行时目录
set runtimepath+=~/.config/vimrc

" 加载运行时目录中的文件
runtime basic.vim

" 加载本地个性化配置
try
runtime local.vim
catch
endtry

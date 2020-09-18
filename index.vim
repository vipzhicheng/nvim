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

" 自动加载插件系统 {{{
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

" 设置运行时目录
set runtimepath+=~/.config/vimrc

" 加载插件管理器
runtime autoload/plug.vim

" }}}


" 防止重复定义
augroup cmd_once
  autocmd!
augroup END

" 对vim 定义默认折叠
augroup filetype_vim
    autocmd FileType vim setlocal foldmethod=marker foldlevel=0
augroup END

" 设置快捷键绑定的触发键
let mapleader = " "


" 按文件加载配置 {{{

" 模块化配置加载
runtime plug.vim " 加载插件和插件配置，里面可能包含插件定义的快捷键
runtime key.vim " 加载本项目自定义快捷键
runtime basic.vim " 加载基本配置

" 加载本地配置，不会提交到仓库
try
runtime local.vim
catch
endtry
" }}}

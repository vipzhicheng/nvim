""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 常规配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 保留多少操作历史
set history=500

" 开启显示行号
set nu

" 开启光标在文件首尾的相对位置
" set scrolloff=5

" 当外部文件变更时自动加载
set autoread


" 区分插入模式和普通模式的光标
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 设置快捷键绑定的触发键
let mapleader = ","

" :W 用 sudo 的方式来保存当前文件，适用于打开文件时没加 sudo 导致没有权限写的问题
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" 开启语法高亮
syntax enable

" 关闭备份，因为我们有 git
set nobackup " 不生成备份文件，以 ~ 结尾
set nowritebackup " 不在编辑时生成一份备份文件
set noswapfile " 不写临时文件，临时文件里还会包括操作历史

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr> " 保存当前文件
nmap <leader>W :W<cr> " sudo 保存当前文件

" 在窗口中移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map tx :r !figlet 

""""""""""""""""""""""""""""""
" 状态栏
""""""""""""""""""""""""""""""
" 开启状态栏
set laststatus=2

" 状态栏格式化
" TODO: 学习这里的语法
set statusline=CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 自定义函数
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

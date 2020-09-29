" 常规配置 {{{

set mouse=a


set path+=**         " 支持简单的模糊搜索
set wildmenu         " 文件名自动补全时显示所有匹配的文件
set history=500      " 保留多少操作历史
set hidden           " 允许不保存就切换 buffer
set relativenumber   " 开启相对行号
set number           " 显示行号
set nowrap           " 不主动换行
set cursorline       " 当前行高亮
set confirm          " 退出vim确认

set scrolloff=7     " 开启光标在文件首尾的相对位置
set cmdheight=2

set autoread         " 当外部文件变更时自动加载
set updatetime=300   " 这个值大致的意思是输入完成和触发插件的时间间隔


" set spell   " 拼写检查
" set spelllang=en_us,cjk

" 区分插入模式和普通模式的光标
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


set ignorecase
set smartcase

syntax on                                                  " 开启语法高亮

set nobackup                                               " 不生成备份文件，以 ~ 结尾
set nowritebackup                                          " 不在编辑时生成一份备份文件
set noswapfile                                             " 不写临时文件，临时文件里还会包括操作历史


set shiftwidth=2                                           " 设置缩进大小， >> << 时生效
set smartindent
set expandtab                                              " 用空格代替 tab
set smarttab
set tabstop=2 softtabstop=2

set incsearch                                              " 增量查找
set hlsearch                                               " 高亮搜索

set backspace=indent,eol,start                             " 如果不加这个，退格键的作用会和预期不同，已经输入的内容在再次进入插入模式的时候会删不掉
" }}}

" 简写和纠错 {{{
iabbrev waht what
iabbrev tehn then

" }}}

" 状态栏 {{{
" 开启状态栏
set laststatus=2

" 状态栏格式化
" TODO: 学习这里的语法
" set statusline=CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c
" }}}

" 自定义命令 {{{
command! W execute 'w !sudo tee % > /dev/null' <bar> edit! " :W 用 sudo 的方式来保存当前文件，适用于打开文件时没加 sudo 导致没有权限写的问题
" }}}

" 自定义函数 {{{


" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 常规配置
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 保留多少操作历史
set history=500

" 允许不保存就切换 buffer
set hidden

" 开启显示行号，相对行号
set relativenumber
set number

" 开启光标在文件首尾的相对位置
" set scrolloff=5

" 当外部文件变更时自动加载
set autoread

" 这个值默认是4000，改成300以提升体验
" 这个值大致的意思是输入完成和触发插件的时间间隔
set updatetime=300

" 拼写检查
" set spell
" set spelllang=en_us,cjk


" 区分插入模式和普通模式的光标
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" 设置快捷键绑定的触发键
let mapleader = " "

" :W 用 sudo 的方式来保存当前文件，适用于打开文件时没加 sudo 导致没有权限写的问题
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" 开启语法高亮
syntax enable

" 关闭备份，因为我们有 git
set nobackup " 不生成备份文件，以 ~ 结尾
set nowritebackup " 不在编辑时生成一份备份文件
set noswapfile " 不写临时文件，临时文件里还会包括操作历史

" 如果不加这个，退格键的作用会和预期不同，已经输入的内容在再次进入插入模式的时候会删不掉
set backspace=indent,eol,start

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr> " 保存当前文件
nmap <leader>W :W<cr> " sudo 保存当前文件

nmap <leader>rc :e ~/.config/vimrc/basic.vim<cr>
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost ~/.config/vimrc/basic.vim source % | echom "Reloaded" | redraw
    " autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>

" ===
" === Window management
" ===
" Use <space> + new arrow keys for moving the cursor around windows
noremap <LEADER>k <C-w>k
noremap <LEADER>j <C-w>j
noremap <LEADER>h <C-w>h
noremap <LEADER>l <C-w>l

" 在窗口中移动
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tu :tabe<CR>
" Move around tabs with tn and ti
noremap tp :-tabnext<CR>
noremap tn :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmn :-tabmove<CR>
noremap tmi :+tabmove<CR>

noremap tx :r !figlet 
nnoremap tt :CocCommand explorer<CR>
" coc-translator
nnoremap ts <Plug>(coc-translator-p)

" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>

""""""""""""""""""""""""""""""
" 状态栏
""""""""""""""""""""""""""""""
" 开启状态栏
set laststatus=2

" 状态栏格式化
" TODO: 学习这里的语法
" set statusline=CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => 自定义函数
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

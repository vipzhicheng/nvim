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
" set updatetime=300

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

" 在窗口中移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map tx :r !figlet 
nmap tt :CocCommand explorer<CR>
" coc-translator
nmap ts <Plug>(coc-translator-p)

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

" ===
" === coc.nvim
" ===
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-diagnostic',
	\ 'coc-explorer',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-html',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-prettier',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tasks',
	\ 'coc-todolist',
	\ 'coc-translator',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-vetur',
	\ 'coc-yaml',
	\ 'coc-yank']

" 使用 VIM Plug 管理插件
call plug#begin('~/config/vimrc/plugged')

" Pretty Dress
Plug 'bling/vim-bufferline'
Plug 'bpietravalle/vim-bolt'
Plug 'theniceboy/vim-deus'

" Status line
Plug 'theniceboy/eleline.vim'
Plug 'ojroques/vim-scrollstatus'

" File navigation
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Plug 'kevinhwang91/rnvimr'
Plug 'airblade/vim-rooter'
Plug 'pechorin/any-jump.vim'

" Git
Plug 'airblade/vim-gitgutter'

call plug#end()

" ==
" == GitGutter
" ==
" let g:gitgutter_signs = 0
let g:gitgutter_sign_allow_clobber = 0
let g:gitgutter_map_keys = 0
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_preview_win_floating = 1
let g:gitgutter_sign_added = '▎'
let g:gitgutter_sign_modified = '░'
let g:gitgutter_sign_removed = '▏'
let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▒'
" autocmd BufWritePost * GitGutter
nnoremap <LEADER>gf :GitGutterFold<CR>
nnoremap H :GitGutterPreviewHunk<CR>
nnoremap <LEADER>g- :GitGutterPrevHunk<CR>
nnoremap <LEADER>g= :GitGutterNextHunk<CR>

" ===
" === FZF
" ===
set rtp+=/usr/local/opt/fzf
set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf
set rtp+=/home/david/.linuxbrew/opt/fzf
" noremap <silent> <C-p> :Files<CR>
noremap <silent> <C-p> :Leaderf file<CR>
noremap <silent> <C-f> :Rg<CR>
noremap <silent> <C-h> :History<CR>
"noremap <C-t> :BTags<CR>
noremap <silent> <C-l> :Lines<CR>
noremap <silent> <C-w> :Buffers<CR>
noremap <leader>; :History:<CR>

let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" ===
" === Leaderf
" ===
" let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
let g:Lf_CommandMap = {
\   '<C-k>': ['<C-u>'],
\   '<C-j>': ['<C-e>'],
\   '<C-]>': ['<C-v>'],
\   '<C-p>': ['<C-n>'],
\}
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_WildIgnore = {
        \ 'dir': ['.git', 'vendor'],
        \ 'file': ['__vim_project_root']
        \}
let g:Lf_UseMemoryCache = 0
let g:Lf_UseCache = 0

" deus
set t_Co=256
set termguicolors

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256


" vim-scrollstatus
let g:scrollstatus_size = 12
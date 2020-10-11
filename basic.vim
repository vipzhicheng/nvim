" 常规配置 {{{

set nocompatible     " 禁用 vi 兼容模式

set mouse=a

set autoindent       " 自动缩进
set showmatch        " 显示匹配的括号
set path+=**         " 支持简单的模糊搜索
set wildmenu         " 文件名自动补全时显示所有匹配的文件
set history=500      " 保留多少操作历史
set hidden           " 允许不保存就切换 buffer
set relativenumber   " 开启相对行号
set number           " 显示行号
set nowrap           " 不主动换行
set cursorline       " 当前行高亮
set cursorcolumn     " 当前列高亮
set confirm          " 退出vim确认
set list

set scrolloff=7     " 开启光标在文件首尾的相对位置

set autoread         " 当外部文件变更时自动加载
set updatetime=100   " 这个值大致的意思是输入完成和触发插件的时间间隔
set lazyredraw       " 延迟绘制
set shortmess+=c


" set spell   " 拼写检查
" set spelllang=en_us,cjk

" 区分插入模式和普通模式的光标
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"


set ignorecase                                             " 忽略大小写
set smartcase                                              " 智能大小写判断，平时忽略，除非你在搜大写字母
set incsearch                                              " 增量查找
set hlsearch                                               " 高亮搜索

" 语法高亮设置
if has('syntax')  
	syntax enable 
	syntax on 
endif

set nobackup                                               " 不生成备份文件，以 ~ 结尾
set nowritebackup                                          " 不在编辑时生成一份备份文件
set noswapfile                                             " 不写临时文件，临时文件里还会包括操作历史


set shiftwidth=2                                           " 设置缩进大小， >> << 时生效
set smartindent
set expandtab                                              " 用空格代替 tab
set smarttab
set tabstop=2 softtabstop=2


set backspace=indent,eol,start                             " 如果不加这个，退格键的作用会和预期不同，已经输入的内容在再次进入插入模式的时候会删不掉

" 编码设置
if has('multi_byte')
	" 内部工作编码
	set encoding=utf-8

	" 文件默认编码
	set fileencoding=utf-8

	" 打开文件时自动尝试下面顺序的编码
	set fileencodings=ucs-bom,utf-8,gbk,gb18030,big5,euc-jp,latin1
endif

" 允许 Vim 自带脚本根据文件类型自动设置缩进等
if has('autocmd')
	filetype plugin indent on
endif


" }}}

" 简写和纠错 {{{
iabbrev waht what
iabbrev tehn then

" }}}

" 自定义命令 {{{
command! W execute 'w !sudo tee % > /dev/null' <bar> edit! " :W 用 sudo 的方式来保存当前文件，适用于打开文件时没加 sudo 导致没有权限写的问题
" }}}

" 自定义函数 {{{
function! ToggleScrollMode()
    if exists("s:scroll_mode")
        unmap k
        unmap j
        unlet s:scroll_mode
	echom "scroll mode off"
    else
        nnoremap j <C-e>j
        nnoremap k <C-y>k
        let s:scroll_mode = 1 
	echom "scroll mode on"
    endif
endfunction

function! CompileAndRun()
  exec "w"
  if &filetype == "python"
    set splitbelow
    :sp
    :term python3 %
  elseif &filetype == 'c'
		exec "!g++ % -o %<"
		exec "!time ./%<"
	elseif &filetype == 'cpp'
		set splitbelow
		exec "!g++ -std=c++11 % -Wall -o %<"
		:sp
		:res -15
		:term ./%<
  elseif &filetype == 'markdown'
		exec "InstantMarkdownPreview"
  elseif &filetype == 'javascript'
		set splitbelow
		:sp
		:term export DEBUG="INFO,ERROR,WARNING"; node --trace-warnings .
	elseif &filetype == 'go'
		set splitbelow
		:sp
		:term go run .
  elseif &filetype == 'sh'
		:!time bash %
  elseif &filetype == 'java'
		exec "!javac %"
		exec "!time java %<"
  endif
endfunction

" }}}




" 打开文件时恢复上一次光标所在位置
autocmd BufReadPost *
	\ if line("'\"") > 1 && line("'\"") <= line("$") |
	\	 exe "normal! g`\"" |
	\ endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap <esc> <nop>
inoremap jk <esc>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
nnoremap H 0
nnoremap L $
nnoremap J 5j
nnoremap K 5k

nnoremap <leader>w :w!<cr> " 保存当前文件
nnoremap <leader>W :W<cr> " sudo 保存当前文件

nnoremap <leader>rc :set splitright<cr>:vsplit ~/.config/vimrc/basic.vim<cr>
nnoremap <leader>rl :source $MYVIMRC<cr>
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost ~/.config/vimrc/basic.vim source % | echom "Reloaded" | redraw
    " autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd
noremap <c-g> :tabe<CR>:-tabmove<CR>:term lazygit<CR>

" 在窗口中移动
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l


" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tn :tabe<CR>

" Move around tabs with tn and ti
noremap th :-tabnext<CR>
noremap tl :+tabnext<CR>
" Move the tabs with tmn and tmi
noremap tmh :-tabmove<CR>
noremap tml :+tabmove<CR>

noremap xf :r !figlet 
nnoremap rr :CocCommand explorer<CR>


" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sj :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
noremap sk :set splitbelow<CR>:split<CR>
noremap sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
noremap sl :set splitright<CR>:vsplit<CR>



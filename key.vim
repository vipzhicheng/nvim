""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 快捷键
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" inoremap <esc> <nop>
inoremap jk <esc>

nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel


" Save & quit
noremap Q :q<CR>
noremap <C-q> :qa<CR>
nnoremap <leader>w :w<cr> " 保存当前文件
nnoremap <leader>W :W<cr> " sudo 保存当前文件

nnoremap <leader>rc :set splitright<cr>:vsplit ~/.config/vimrc/basic.vim<cr>
nnoremap <leader>rl :source $MYVIMRC<cr>
if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost ~/.config/vimrc/basic.vim source % | echom "Reloaded" | redraw
    " autocmd! BufWritePost $MYGVIMRC if has('gui_running') | so % | echom "Reloaded " . $MYGVIMRC | endif | redraw
  augroup END
endif " has autocmd

noremap <c-g> :tabe<cr>:-tabmove<cr>:term lazygit<cr>

" 在窗口中移动
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l

" Resize splits with arrow keys
noremap <up> :res -5<CR>
noremap <down> :res +5<CR>
noremap <left> :vertical resize+5<CR>
noremap <right> :vertical resize-5<CR>

" ===
" === Tab management
" ===
" Create a new tab with tu
noremap tn :tabe<cr>

" Move around tabs with tn and ti
noremap th :-tabnext<cr>
noremap tl :+tabnext<cr>
noremap tx :tabclose<cr>
" Move the tabs with tmn and tmi
noremap tmh :-tabmove<cr>
noremap tml :+tabmove<cr>

noremap xf :r !figlet 


" Disable the default s key
noremap s <nop>

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
noremap sj :set nosplitbelow<cr>:split<cr>:set splitbelow<cr>
noremap sk :set splitbelow<cr>:split<cr>
noremap sh :set nosplitright<cr>:vsplit<cr>:set splitright<cr>
noremap sl :set splitright<cr>:vsplit<cr>
nnoremap sx :q!<cr>

" Place the two screens up and down
noremap sn <C-w>t<C-w>K
" Place the two screens side by side
noremap sv <C-w>t<C-w>H

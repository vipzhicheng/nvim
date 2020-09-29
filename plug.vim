if has ('autocmd') " Remain compatible with earlier versions
 augroup vimrc     " Source vim configuration upon save
    autocmd! BufWritePost ~/.config/vimrc/plug.vim source ~/.config/vimrc/index.vim | echom "Reloaded" | redraw
  augroup END
endif " has autocmd


" 声明 coc 扩展 {{{
let g:coc_global_extensions = [
	\ 'coc-css',
	\ 'coc-diagnostic',
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
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-vetur',
	\ 'coc-yaml',
	\ 'coc-yank']
" }}}

" 声明 VIM Plug 启用插件 {{{
call plug#begin('~/.config/vimrc/plugged')

" Pretty Dress
" Plug 'morhetz/gruvbox'   " 另一个主题
Plug 'theniceboy/vim-deus'            " 一个主题
Plug 'TaDaa/vimade'                   " 光标所在区域高亮
Plug 'ryanoasis/vim-devicons'         " 资源管理器文件图标
Plug 'junegunn/goyo.vim'              " 专注模式
Plug 'vim-airline/vim-airline'        " 状态栏
Plug 'vim-airline/vim-airline-themes' " 状态栏主题
Plug 'liuchengxu/vim-which-key'       " 提示 <leader> 之后都有什么键绑定
Plug 'skywind3000/vim-quickui'        " 提供了一个菜单栏
Plug 'mhinz/vim-startify'             " 启动页


" File navigation
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }                 " 各种文件切换方式
Plug 'neoclide/coc.nvim', {'branch': 'release'}                   " LSC 补全客户端，同时具有自己的插件机制
Plug 'kevinhwang91/rnvimr'                                        " 整合 ranger
Plug 'preservim/nerdtree'                                         " 资源管理器
Plug 'airblade/vim-rooter'                                        " 自动切换目录
Plug 'pechorin/any-jump.vim'                                      " 跳转文件

" Editor
Plug 'honza/vim-snippets'           " 社区代码片段
Plug 'tpope/vim-repeat'             " 修正 . 的作用
Plug 'mbbill/undotree'              " 本地修改历史，撤销/重做
Plug 'terryma/vim-multiple-cursors' " 多光标查找和修改
Plug 'junegunn/vim-easy-align'      " 对齐等号
Plug 'easymotion/vim-easymotion'    " 快速移动光标
Plug 'liuchengxu/vista.vim'         " 程序大纲 依赖于ctags，还没配好
Plug 'jiangmiao/auto-pairs'         " 括号自动匹配
Plug 'preservim/nerdcommenter'      " 注释
Plug 'tpope/vim-surround'           " 用符号包围字符串
Plug 'mattn/emmet-vim'              " HTML 智能补全

call plug#end()
" }}}


" ===
" === LeaderF
" ===
" noremap <silent> <C-p> :Files<cr>
noremap <silent> <C-p> :Leaderf file<cr>
noremap <silent> <C-e> :LeaderfMru<cr>
noremap <silent> <C-b> :LeaderfBuffer<cr>
noremap <silent> <C-f> :LeaderfFunction<cr>
noremap <silent> <C-m> :RG<cr>
"noremap <silent> <C-h> :History<cr>
"noremap <C-t> :BTags<cr>
"noremap <silent> <C-l> :Lines<cr>
"noremap <silent> <C-w> :Buffers<cr>
"noremap <leader>; :History:<cr>

" let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
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



" ===
" === rnvimr
" ===
let g:rnvimr_ex_enable = 1
let g:rnvimr_pick_enable = 1
let g:rnvimr_draw_border = 0
" let g:rnvimr_bw_enable = 1
highlight link RnvimrNormal CursorLine
nnoremap <silent> R :RnvimrToggle<cr><C-\><C-n>:RnvimrResize 0<cr>
let g:rnvimr_action = {
            \ '<C-t>': 'NvimEdit tabedit',
            \ '<C-x>': 'NvimEdit split',
            \ '<C-v>': 'NvimEdit vsplit',
            \ 'gw': 'JumpNvimCwd',
            \ 'yw': 'EmitRangerCwd'
            \ }
" Customize the initial layout
let g:rnvimr_layout = { 'relative': 'editor',
            \ 'width': float2nr(round(0.6 * &columns)),
            \ 'height': float2nr(round(0.6 * &lines)),
            \ 'col': float2nr(round(0.2 * &columns)),
            \ 'row': float2nr(round(0.2 * &lines)),
            \ 'style': 'minimal' }

" Customize multiple preset layouts
" '{}' represents the initial layout
let g:rnvimr_presets = [
            \ {},
            \ {'width': 0.700, 'height': 0.700},
            \ {'width': 0.800, 'height': 0.800},
            \ {'width': 0.950, 'height': 0.950},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0},
            \ {'width': 0.500, 'height': 0.500, 'col': 0.5, 'row': 0.5},
            \ {'width': 0.500, 'height': 1.000, 'col': 0, 'row': 0},
            \ {'width': 0.500, 'height': 1.000, 'col': 0.5, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0},
            \ {'width': 1.000, 'height': 0.500, 'col': 0, 'row': 0.5}]

" ===
" === vimade
" ===


" ===
" === airline
" ===
set laststatus=2  "永远显示状态栏
let g:airline_powerline_fonts = 1  " 支持 powerline 字体
let g:airline#extensions#tabline#enabled = 1 " 显示窗口tab和buffer
let g:airline_theme='molokai'  " murmur配色不错

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'

noremap rr :AirlineTheme random<cr>


" ===
" === auto jump, use default
" ===

" ===
" === Undotree
" ===
noremap <LEADER>do :UndotreeToggle<cr>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24
function g:Undotree_CustomMap()
	nnoremap <buffer> j <plug>UndotreeNextState
	nnoremap <buffer> k <plug>UndotreePreviousState
endfunc

" ===
" === goyo
" ===
map gy :Goyo<cr>


" ===
" === vim-easy-align
" ===

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)


" ===
" === coc
" ===
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>ff  <Plug>(coc-format-selected)
nmap <leader>ff  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols.
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
imap <C-e> <Plug>(coc-snippets-expand-jump)

" ===
" === EasyMotion
" ===
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <leader>g <Plug>(easymotion-overwin-f)

" Turn on case-insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
noremap <Leader>j <Plug>(easymotion-j)
noremap <Leader>k <Plug>(easymotion-k)
noremap  <leader>/ <Plug>(easymotion-sn)

" ===
" === NERDTree
" ===

" 打开 NERDTree的快捷键
noremap tt :NERDTreeToggle<CR>
" 如果当前窗口只剩下 NERDTree 了，就把NERDTree 也关掉
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ===
" === NERD commenter
" ===
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' }  }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or not 
let g:NERDToggleCheckAllLines = 1

" ===
" === which-key
" ===
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  ','<CR>

" ===
" === quickui
" ===
"======================================================================
"
" menu_init.vim -
"
" Created by skywind on 2019/12/26
" Last Modified: 2019/12/26 16:23:48
"
"======================================================================

if has('patch-8.1.2292') == 0 && exists('*nvim_open_win') == 0
	finish
endif

call quickui#menu#reset()

call quickui#menu#install("&File", [
			\ [ "&Open\t(:w)", 'call feedkeys(":tabe ")'],
			\ [ "&Save\t(:w)", 'write'],
			\ [ "--", ],
			\ [ "LeaderF &File", 'Leaderf file', 'Open file with leaderf'],
			\ [ "LeaderF &Mru", 'Leaderf mru --regexMode', 'Open recently accessed files'],
			\ [ "LeaderF &Buffer", 'Leaderf buffer', 'List current buffers in leaderf'],
			\ [ "--", ],
			\ [ "J&unk File", 'JunkFile', ''],
			\ ])

if has('win32') || has('win64') || has('win16')
	call quickui#menu#install('&File', [
				\ [ "--", ],
				\ [ "Start &Cmd", 'silent !start /b cmd /C c:\drivers\clink\clink.cmd' ],
				\ [ "Start &PowerShell", 'silent !start powershell.exe' ],
				\ [ "Open &Explore", 'call Show_Explore()' ],
				\ ])
endif

call quickui#menu#install("&File", [
			\ [ "--", ],
			\ [ "E&xit", 'qa' ],
			\ ])

call quickui#menu#install("&Edit", [
			\ ['Copyright &Header', 'call feedkeys("\<esc> ec")', 'Insert copyright information at the beginning'],
			\ ['&Trailing Space', 'call StripTrailingWhitespace()', ''],
			\ ['Update &ModTime', 'call UpdateLastModified()', ''],
			\ ['&Paste Mode Line', 'PasteVimModeLine', ''],
			\ ['Format J&son', '%!python -m json.tool', ''],
			\ ['--'],
			\ ['&Align Table', 'Tabularize /|', ''],
			\ ['Align &Cheatsheet', 'MyCheatSheetAlign', ''],
			\ ])

call quickui#menu#install('&Symbol', [
			\ [ "&Grep Word\t(In Project)", 'call MenuHelp_GrepCode()', 'Grep keyword in current project' ],
			\ [ "--", ],
			\ [ "Find &Definition\t(GNU Global)", 'call MenuHelp_Gscope("g")', 'GNU Global search g'],
			\ [ "Find &Symbol\t(GNU Global)", 'call MenuHelp_Gscope("s")', 'GNU Gloal search s'],
			\ [ "Find &Called by\t(GNU Global)", 'call MenuHelp_Gscope("d")', 'GNU Global search d'],
			\ [ "Find C&alling\t(GNU Global)", 'call MenuHelp_Gscope("c")', 'GNU Global search c'],
			\ [ "Find &From Ctags\t(GNU Global)", 'call MenuHelp_Gscope("z")', 'GNU Global search c'],
			\ [ "--", ],
			\ [ "Goto D&efinition\t(YCM)", 'YcmCompleter GoToDefinitionElseDeclaration'],
			\ [ "Goto &References\t(YCM)", 'YcmCompleter GoToReferences'],
			\ [ "Get D&oc\t(YCM)", 'YcmCompleter GetDoc'],
			\ [ "Get &Type\t(YCM)", 'YcmCompleter GetTypeImprecise'],
			\ ])

call quickui#menu#install('&Move', [
			\ ["Quickfix &First\t:cfirst", 'cfirst', 'quickfix cursor rewind'],
			\ ["Quickfix L&ast\t:clast", 'clast', 'quickfix cursor to the end'],
			\ ["Quickfix &Next\t:cnext", 'cnext', 'cursor next'],
			\ ["Quickfix &Previous\t:cprev", 'cprev', 'quickfix cursor previous'],
			\ ])

call quickui#menu#install("&Build", [
			\ ["File &Execute\tF5", 'AsyncTask file-run'],
			\ ["File &Compile\tF9", 'AsyncTask file-build'],
			\ ["File E&make\tF7", 'AsyncTask emake'],
			\ ["File &Start\tF8", 'AsyncTask emake-exe'],
			\ ['--', ''],
			\ ["&Project Build\tShift+F9", 'AsyncTask project-build'],
			\ ["Project &Run\tShift+F5", 'AsyncTask project-run'],
			\ ["Project &Test\tShift+F6", 'AsyncTask project-test'],
			\ ["Project &Init\tShift+F7", 'AsyncTask project-init'],
			\ ['--', ''],
			\ ["T&ask List\tCtrl+F10", 'call MenuHelp_TaskList()'],
			\ ['E&dit Task', 'AsyncTask -e'],
			\ ['Edit &Global Task', 'AsyncTask -E'],
			\ ['&Stop Building', 'AsyncStop'],
			\ ])

call quickui#menu#install("&Git", [
			\ ['&View Diff', 'call svnhelp#svn_diff("%")'],
			\ ['&Show Log', 'call svnhelp#svn_log("%")'],
			\ ['File &Add', 'call svnhelp#svn_add("%")'],
			\ ])


if has('win32') || has('win64') || has('win16') || has('win95')
	call quickui#menu#install("&Git", [
				\ ['--',''],
				\ ["Project &Update\t(Tortoise)", 'call svnhelp#tp_update()', 'TortoiseGit / TortoiseSvn'],
				\ ["Project &Commit\t(Tortoise)", 'call svnhelp#tp_commit()', 'TortoiseGit / TortoiseSvn'],
				\ ["Project L&og\t(Tortoise)", 'call svnhelp#tp_log()',  'TortoiseGit / TortoiseSvn'],
				\ ["Project &Diff\t(Tortoise)", 'call svnhelp#tp_diff()', 'TortoiseGit / TortoiseSvn'],
				\ ['--',''],
				\ ["File &Add\t(Tortoise)", 'call svnhelp#tf_add()', 'TortoiseGit / TortoiseSvn'],
				\ ["File &Blame\t(Tortoise)", 'call svnhelp#tf_blame()', 'TortoiseGit / TortoiseSvn'],
				\ ["File Co&mmit\t(Tortoise)", 'call svnhelp#tf_commit()', 'TortoiseGit / TortoiseSvn'],
				\ ["File D&iff\t(Tortoise)", 'call svnhelp#tf_diff()', 'TortoiseGit / TortoiseSvn'],
				\ ["File &Revert\t(Tortoise)", 'call svnhelp#tf_revert()', 'TortoiseGit / TortoiseSvn'],
				\ ["File Lo&g\t(Tortoise)", 'call svnhelp#tf_log()', 'TortoiseGit / TortoiseSvn'],
				\ ])
endif

call quickui#menu#install('&Tools', [
			\ ['Compare &History', 'call svnhelp#compare_ask_file()', ''],
			\ ['&Compare Buffer', 'call svnhelp#compare_ask_buffer()', ''],
			\ ['--',''],
			\ ['List &Buffer', 'call quickui#tools#list_buffer("FileSwitch tabe")', ],
			\ ['List &Function', 'call quickui#tools#list_function()', ],
			\ ['Display &Messages', 'call quickui#tools#display_messages()', ],
			\ ['--',''],
			\ ["&DelimitMate %{get(b:, 'delimitMate_enabled', 0)? 'Disable':'Enable'}", 'DelimitMateSwitch'],
			\ ['Read &URL', 'call menu#ReadUrl()', 'load content from url into current buffer'],
			\ ['&Spell %{&spell? "Disable":"Enable"}', 'set spell!', 'Toggle spell check %{&spell? "off" : "on"}'],
			\ ['&Profile Start', 'call MonitorInit()', ''],
			\ ['Profile S&top', 'call MonitorExit()', ''],
			\ ["Relati&ve number %{&relativenumber? 'OFF':'ON'}", 'set relativenumber!'],
			\ ["Proxy &Enable", 'call MenuHelp_Proxy(1)', 'setup http_proxy/https_proxy/all_proxy'],
			\ ["Proxy D&isable", 'call MenuHelp_Proxy(0)', 'clear http_proxy/https_proxy/all_proxy'],
			\ ])

call quickui#menu#install('&Plugin', [
			\ ["&NERDTree\t<space>tn", 'NERDTreeToggle', 'toggle nerdtree'],
			\ ['&Tagbar', '', 'toggle tagbar'],
			\ ["&Choose Window/Tab\tAlt+e", "ChooseWin", "fast switch win/tab with vim-choosewin"],
			\ ["-"],
			\ ["&Browse in github\trhubarb", "Gbrowse", "using tpope's rhubarb to open browse and view the file"],
			\ ["&Startify", "Startify", "using tpope's rhubarb to open browse and view the file"],
			\ ["&Gist", "Gist", "open gist with mattn/gist-vim"],
			\ ["&Edit Note", "Note", "edit note with vim-notes"],
			\ ["&Display Calendar", "Calendar", "display a calender"],
			\ ['Toggle &Vista', 'Vista!!', ''],
			\ ["-"],
			\ ["Plugin &List", "PlugList", "Update list"],
			\ ["Plugin &Update", "PlugUpdate", "Update plugin"],
			\ ])

call quickui#menu#install('Help (&?)', [
			\ ["&Index", 'tab help index', ''],
			\ ['Ti&ps', 'tab help tips', ''],
			\ ['--',''],
			\ ["&Tutorial", 'tab help tutor', ''],
			\ ['&Quick Reference', 'tab help quickref', ''],
			\ ['&Summary', 'tab help summary', ''],
			\ ['--',''],
			\ ['&Vim Script', 'tab help eval', ''],
			\ ['&Function List', 'tab help function-list', ''],
			\ ['&Dash Help', 'call asclib#utils#dash_ft(&ft, expand("<cword>"))'],
			\ ], 10000)

" let g:quickui_show_tip = 1


"----------------------------------------------------------------------
" context menu
"----------------------------------------------------------------------
let g:context_menu_k = [
			\ ["&Peek Definition\tAlt+;", 'call quickui#tools#preview_tag("")'],
			\ ["S&earch in Project\t\\cx", 'exec "silent! GrepCode! " . expand("<cword>")'],
			\ [ "--", ],
			\ [ "Find &Definition\t\\cg", 'call MenuHelp_Fscope("g")', 'GNU Global search g'],
			\ [ "Find &Symbol\t\\cs", 'call MenuHelp_Fscope("s")', 'GNU Gloal search s'],
			\ [ "Find &Called by\t\\cd", 'call MenuHelp_Fscope("d")', 'GNU Global search d'],
			\ [ "Find C&alling\t\\cc", 'call MenuHelp_Fscope("c")', 'GNU Global search c'],
			\ [ "Find &From Ctags\t\\cz", 'call MenuHelp_Fscope("z")', 'GNU Global search c'],
			\ [ "--", ],
			\ [ "Goto D&efinition\t(YCM)", 'YcmCompleter GoToDefinitionElseDeclaration'],
			\ [ "Goto &References\t(YCM)", 'YcmCompleter GoToReferences'],
			\ [ "Get D&oc\t(YCM)", 'YcmCompleter GetDoc'],
			\ [ "Get &Type\t(YCM)", 'YcmCompleter GetTypeImprecise'],
			\ [ "--", ],
			\ ['Dash &Help', 'call asclib#utils#dash_ft(&ft, expand("<cword>"))'],
			\ ['Cpp&man', 'exec "Cppman " . expand("<cword>")', '', 'c,cpp'],
			\ ['P&ython Doc', 'call quickui#tools#python_help("")', 'python'],
			\ ]


"----------------------------------------------------------------------
" hotkey
"----------------------------------------------------------------------
nnoremap <silent><space><space> :call quickui#menu#open()<cr>

nnoremap <silent>K :call quickui#tools#clever_context('k', g:context_menu_k, {})<cr>

if has('gui_running') || has('nvim')
	noremap <c-f10> :call MenuHelp_TaskList()<cr>
endif

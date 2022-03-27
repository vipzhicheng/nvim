"`g:python3_host_prog` 声明 coc 扩展 
let g:coc_global_extensions = [
	\ 'coc-actions',
	\ 'coc-marketplace',
	\ 'coc-css',
	\ 'coc-calc',
	\ 'coc-deno',
	\ 'coc-diagnostic',
	\ 'coc-docker',
	\ 'coc-flutter-tools',
	\ 'coc-gitignore',
	\ 'coc-go',
	\ 'coc-html',
	\ 'coc-json',
	\ 'coc-lists',
	\ 'coc-phpls',
	\ 'coc-prettier',
	\ 'coc-pyright',
	\ 'coc-python',
	\ 'coc-restclient',
	\ 'coc-snippets',
	\ 'coc-sourcekit',
	\ 'coc-stylelint',
	\ 'coc-syntax',
	\ 'coc-tslint-plugin',
	\ 'coc-tsserver',
	\ 'coc-vimlsp',
	\ 'coc-vetur',
	\ 'coc-yaml',
	\ 'coc-yank']

" 声明 VIM Plug 启用插件 
call plug#begin('~/.config/nvim/plugged')

" Pretty Dress
Plug 'junegunn/goyo.vim'              " 专注模式
Plug 'vim-airline/vim-airline'        " 状态栏
Plug 'vim-airline/vim-airline-themes' " 状态栏主题
Plug 'liuchengxu/vim-which-key'       " 提示 <leader> 之后都有什么键绑定
Plug 'skywind3000/vim-quickui'        " 提供了一个菜单栏
Plug 'hardcoreplayers/dashboard-nvim'
Plug 'voldikss/vim-floaterm'          " 添加额外的终端弹窗
Plug 'connorholyday/vim-snazzy'      "就是个主题配色
Plug 'tpope/vim-fugitive'    " 在Vim里直接调用Git命令
Plug 'junegunn/gv.vim' " 提供了一个Git Commits的插件界面
"Plug 'altercation/vim-colors-solarized'

" File navigation
Plug 'nvim-lua/plenary.nvim'    "貌似是个底层依赖
Plug 'nvim-telescope/telescope.nvim'    "呈现各种列表
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"Plug 'Yggdroot/LeaderF', { 'do': './install.sh' } " 各种文件切换方式
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}   " LSC 补全客户端，同时具有自己的插件机制
Plug 'kevinhwang91/rnvimr'                        " 整合 ranger
Plug 'preservim/nerdtree'                         " 资源管理器
Plug 'Xuyuanp/nerdtree-git-plugin'           "左侧目录显示Git状态
"Plug 'ryanoasis/vim-davicons'                     " 资源管理器文件图标
Plug 'airblade/vim-rooter'                        " 自动切换目录
Plug 'pechorin/any-jump.vim'                      " 跳转文件
Plug 'brooth/far.vim'
" Plug 'MattesGroeger/vim-bookmarks'
Plug 'kshenoy/vim-signature'      " marks优化
Plug 'yuttie/comfortable-motion.vim'    " 顺滑的翻页滚动效果 

" Editor
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " 多光标匹配编辑
Plug 'honza/vim-snippets'           " 社区代码片段
"Plug 'tpope/vim-repeat'             " 修正 . 的作用
Plug 'mbbill/undotree'              " 本地修改历史，撤销/重做
Plug 'junegunn/vim-easy-align'      " 对齐等号
Plug 'easymotion/vim-easymotion'    " 快速移动光标
Plug 'liuchengxu/vista.vim'         " 程序大纲 依赖于ctags，还没配好
Plug 'jiangmiao/auto-pairs'         " 括号自动匹配
Plug 'preservim/nerdcommenter'      " 注释
Plug 'tpope/vim-surround'           " 用符号包围字符串
"Plug 'gcmt/wildfire.vim'
Plug 'mattn/emmet-vim'              " HTML 智能补全
Plug 'dhruvasagar/vim-table-mode'   " Markdown 表格模式
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown 预览
Plug 'Yggdroot/indentLine'
Plug 'lfv89/vim-interestingwords'   " 高亮单词
Plug 'tpope/vim-abolish'            " 变量名变换
Plug 'haya14busa/incsearch.vim'


" Language
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Tool

"Plug 'lyokha/vim-xkbswitch'
"Plug 'vimwiki/vimwiki'
Plug 'yianwillis/vimcdoc'
"Plug 'jpalardy/vim-slime'
"Plug 'tpope/vim-obsession'

" Debugger
"Plug 'puremourning/vimspector', {'do': './install_gadget.py --enable-c --enable-python --enable-go --force-enable-node'}


call plug#end()

colorscheme snazzy

" ===
" === LeaderF
" ===
"noremap <silent> <leader>ff :Files<cr>
"noremap <silent> <leader>tc :Colors<cr>
"noremap <silent> <leader>fm :Marks<cr>
"noremap <silent> <leader>fa :Ag<cr>
"noremap <silent> <leader>fe :LeaderfMru<cr>
"noremap <silent> <leader>fb :Buffer<cr>
"noremap <silent> <leader>fu :LeaderfFunction<cr>
"noremap <silent> <leader>fh :History<cr>
"noremap <C-t> :BTags<cr>
"noremap <silent> <C-l> :Lines<cr>

" ===
" === Telescop
" ====
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>


let g:Lf_WindowPosition = 'popup'
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



" vim-scrollstatus
let g:scrollstatus_size = 12



" ===
" === rnvima
" ===
let g:rnvimr_ex_enable = 1
let g:rnvimr_pick_enable = 1
let g:rnvimr_draw_border = 0
" let g:rnvimr_bw_enable = 1
highlight link RnvimrNormal CursorLine
nnoremap <silent> <leader>ra :RnvimrToggle<cr><C-\><C-n>:RnvimrResize 0<cr>
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
            \ {'wiath': 0.500, 'height': 0.500, 'col': 0, 'row': 0.5},
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
autocmd FileType dashboard set showtabline=0 | autocmd BufLeave <buffer> set showtabline=2
let g:airline_theme='base16_brewer'
let g:airline_extensions = ['tabline']
let g:airline_highlighting_cache = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
nnoremap <silent> <leader>rr :AirlineTheme random<cr>


" ===
" === auto jump, use default
" ===

" ===
" === Undotree
" ===
noremap U :UndotreeToggle<cr>
let g:undotree_DiffAutoOpen = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_ShortIndicators = 1
let g:undotree_WindowLayout = 2
let g:undotree_DiffpanelHeight = 8
let g:undotree_SplitWidth = 24

" ===
" === goyo
" ===
nmap <silent> <leader>gy :Goyo<cr>


" ===
" === vim-easy-align
" ===

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nnoremap ga <Plug>(EasyAlign)


" ===
" === Coc
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

inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <silent><expr> <c-e> coc#refresh()


" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>- <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>= <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gt <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction


" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
" xmap <leader>ff  <Plug>(coc-format-selected)
" nmap <leader>ff  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
" nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
" nmap <leader>qf  <Plug>(coc-fix-current)

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


" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
" nnoremap <silent><nowait> <space>d  :<C-u>CocList diagnostics<cr>
" " Manage extensions.
" nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" " Show commands.
" nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" " Find symbol of current document.
" nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" " Search workspace symbols.
" nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" " Do default action for next item.
" nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" " Do default action for previous item.
" nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>


" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'

" coc-restclient
nnoremap <leader>re :<C-u>CocCommand rest-client.request<CR>


" ===
" === EasyMotion
" ===
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap <leader>gg <Plug>(easymotion-overwin-f2)

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
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0

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

imap <Leader>c<space> <C-o><Leader>c<space>

" ===
" === which-key
" ===
nnoremap <silent> s      :<c-u>WhichKey 's'<CR>
nnoremap <silent> t      :<c-u>WhichKey 't'<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>

" ===
" === quickui
" ===
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
			\ ])

if has('win32') || has('win64') || has('win16')
	call quickui#menu#install('&File', [
				\ [ "--", ],
				\ [ "Start &PowerShell", 'silent !start powershell.exe' ],
				\ [ "Open &Explore", 'call Show_Explore()' ],
				\ ])
endif

call quickui#menu#install("&File", [
			\ [ "--", ],
			\ [ "E&xit", 'qa' ],
			\ ])

call quickui#menu#install("&Edit", [
			\ [ "&Yank History", 'CocList -A --normal yank'],
			\ [ "&Yank Clean", 'CocCommand yank.clean'],
			\ [ "--", ],
      \ [ '&Find', 'CocList grep' ],
			\ [ "E&xit", 'qa' ],
			\ ])

call quickui#menu#install("&View", [
			\ [ "&Problem", 'CocList diagnostics'],
			\ [ "--", ],
			\ ])

call quickui#menu#install('&Tools', [
			\ ['List &Buffer', 'call quickui#tools#list_buffer("e")', ],
			\ ['List &Function', 'call quickui#tools#list_function()', ],
			\ ['Display &Messages', 'call quickui#tools#display_messages()', ],
			\ ['--',''],
      \ ['CocMarket', 'CocList marketplace'],
			\ ['--',''],
			\ ['&Spell %{&spell? "Disable":"Enable"}', 'set spell!', 'Toggle spell check %{&spell? "off" : "on"}'],
			\ ["Relati&ve number %{&relativenumber? 'OFF':'ON'}", 'set relativenumber!'],
			\ ["Toggle S&croll Mode", 'call ToggleScrollMode()'],
			\ ])

call quickui#menu#install('&Plugin', [
			\ ["&NERDTree\t<space>tn", 'NERDTreeToggle', 'toggle nerdtree'],
			\ ["-"],
			\ ["&Startify", "Startify", "using tpope's rhubarb to open browse and view the file"],
			\ ["-"],
			\ ["Plugin &Status", "PlugStatus", "Update plugin"],
			\ ["Plugin &Update", "PlugUpdate", "Update plugin"],
			\ ["-"],
      \ ['CocMarket', 'CocList marketplace'],
      \ ['CocUpdate', 'CocUpdate'],
      \ ['CocConfig', 'CocConfig'],
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
			\ ], 10000)

let g:quickui_show_tip = 1


"----------------------------------------------------------------------
" context menu
"----------------------------------------------------------------------
let g:context_menu_k = [
			\ [ "--", ],
			\ ['P&ython Doc', 'call quickui#tools#python_help("")', 'python'],
			\ ]


"----------------------------------------------------------------------
" hotkey
"----------------------------------------------------------------------
nnoremap <silent>M :call quickui#menu#open()<cr>

nnoremap <silent>K :call quickui#tools#clever_context('k', g:context_menu_k, {})<cr>

if has('gui_running') || has('nvim')
	noremap <c-f10> :call MenuHelp_TaskList()<cr>
endif



" ===
" === Floaterm
" ===
nnoremap   <silent>   <leader>mm    :FloatermNew --wintype=normal --positon=bottom --autoclose=1<CR>
let g:floaterm_keymap_toggle = '<F12>'
nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>


" ===
" === vim-go
" ===
let g:go_echo_go_info = 0
let g:go_doc_popup_window = 1
let g:go_def_mapping_enabled = 0
let g:go_template_autocreate = 0
let g:go_textobj_enabled = 0
let g:go_auto_type_info = 1
let g:go_def_mapping_enabled = 0
let g:go_highlight_array_whitespace_error = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_chan_whitespace_error = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_format_strings = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_function_parameters = 1
let g:go_highlight_functions = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_space_tab_error = 1
let g:go_highlight_string_spellcheck = 1
let g:go_highlight_structs = 1
let g:go_highlight_trailing_whitespace_error = 1
let g:go_highlight_types = 1
let g:go_highlight_variable_assignments = 0
let g:go_highlight_variable_declarations = 0
let g:go_doc_keywordprg_enabled = 0
let g:go_fmt_command = "goimports"


" ===
" === Dashboard
" ===
let g:dashboard_default_executive ='fzf'
let g:dashboard_default_header = 'cres'
nmap <Leader>ss :<C-u>SessionSave<CR>
nmap <Leader>sl :<C-u>SessionLoad<CR>
nmap <Leader>fc :<C-u>DashboardNewFile<CR>
" nnoremap <silent> <Leader>fh :History<CR>
" nnoremap <silent> <Leader>ff :Files<CR>
" nnoremap <silent> <Leader>tc :Colors<CR>
" nnoremap <silent> <Leader>fa :Ag<CR>
" nnoremap <silent> <Leader>fb :Marks<CR>
nnoremap <silent> <Leader>fc :<C-u>DashboardNewFile<CR>

let g:dashboard_custom_shortcut={
  \ 'edit_vimrc'       : 'SPC r c',
  \ 'last_session'       : 'SPC s l',
  \ 'find_history'       : 'SPC f h',
  \ 'find_file'          : 'SPC f f',
  \ 'new_file'           : 'SPC f c',
  \ 'change_colorscheme' : 'SPC t c',
  \ 'find_word'          : 'SPC f a',
  \ 'book_marks'         : 'SPC f b',
  \ }

let g:dashboard_shortcut_icon = {}
let g:dashboard_shortcut_icon['edit_vimrc'] = '  '
let g:dashboard_shortcut_icon['last_session'] = '  '
let g:dashboard_shortcut_icon['find_history'] = '  '
let g:dashboard_shortcut_icon['find_file'] = '  '
let g:dashboard_shortcut_icon['new_file'] = '  '
let g:dashboard_shortcut_icon['change_colorscheme'] = '  '
let g:dashboard_shortcut_icon['find_word'] = '  '
let g:dashboard_shortcut_icon['book_marks'] = '  '

let g:dashboard_custom_section = {
  \ 'a_edit_vimrc'         :{
        \ 'description': [g:dashboard_shortcut_icon['edit_vimrc'].'Edit my vimrc again!                  '.g:dashboard_custom_shortcut['last_session']],
        \ 'command':'e ~/.config/nvim/plug.vim'},
  \ 'last_session'         :{
        \ 'description': [g:dashboard_shortcut_icon['last_session'].'Recently last session                 '.g:dashboard_custom_shortcut['last_session']],
        \ 'command':function('dashboard#handler#last_session')},
  \ 'find_history'         :{
        \ 'description': [g:dashboard_shortcut_icon['find_history'].'Recently opened files                 '.g:dashboard_custom_shortcut['find_history']],
        \ 'command':function('dashboard#handler#find_history')},
  \ 'find_file'            :{
        \ 'description': [g:dashboard_shortcut_icon['find_file'].'Find  File                            '.g:dashboard_custom_shortcut['find_file']],
        \ 'command':function('dashboard#handler#find_file')},
  \ 'b_new_file'             :{
        \ 'description': [g:dashboard_shortcut_icon['new_file'].'New  File                             '.g:dashboard_custom_shortcut['new_file']],
        \ 'command':function('dashboard#handler#new_file')},
  \ 'change_colorscheme'   :{
        \ 'description': [g:dashboard_shortcut_icon['change_colorscheme'].'Change Colorscheme                    '.g:dashboard_custom_shortcut['change_colorscheme']],
        \ 'command':function('dashboard#handler#change_colorscheme')},
  \ 'find_word'            :{
        \ 'description': [g:dashboard_shortcut_icon['find_word'].'Find  word                            '.g:dashboard_custom_shortcut['find_word']],
        \ 'command': function('dashboard#handler#find_word')},
  \ 'book_marks'           :{
        \ 'description': [g:dashboard_shortcut_icon['book_marks'].'Jump to book marks                    '.g:dashboard_custom_shortcut['book_marks']],
        \ 'command':function('dashboard#handler#book_marks')},
  \ }



" let g:dashboard_custom_section = {
"   \ 'a_edit_vimrc'           :[g:dashboard_shortcut_icon['edit_vimrc'].'Edit my vimrc again!                  '.g:dashboard_custom_shortcut['edit_vimrc']],
"   \ 'b_new_file'             :[g:dashboard_shortcut_icon['new_file'].'New  File                             '.g:dashboard_custom_shortcut['new_file']],
"   \ 'book_marks'           :[g:dashboard_shortcut_icon['book_marks'].'Jump to book marks                    '.g:dashboard_custom_shortcut['book_marks']],
"   \ 'last_session'         :[g:dashboard_shortcut_icon['last_session'].'Recently last session                 '.g:dashboard_custom_shortcut['last_session']],
"   \ 'find_history'         :[g:dashboard_shortcut_icon['find_history'].'Recently opened files                 '.g:dashboard_custom_shortcut['find_history']],
"   \ 'find_file'            :[g:dashboard_shortcut_icon['find_file'].'Find  File                            '.g:dashboard_custom_shortcut['find_file']],
"   \ 'change_colorscheme'   :[g:dashboard_shortcut_icon['change_colorscheme'].'Change Colorscheme                    '.g:dashboard_custom_shortcut['change_colorscheme']],
"   \ 'find_word'            :[g:dashboard_shortcut_icon['find_word'].'Find  word                            '.g:dashboard_custom_shortcut['find_word']],
"   \ }
func! EDIT_VIMRC()
  :e ~/.config/nvim/plug.vim
endfunction
function! LAST_SESSION()
  SessionLoad 
endfunction
function! FIND_HISTORY()
  DashboardFindHistory
endfunction
function! FIND_FILE()
  DashboardFindFile
endfunction
function! B_NEW_FILE()
  DashboardNewFile
endfunction
function! CHANGE_COLORSCHEME()
  DashboardChangeColorscheme
endfunction
function! FIND_WORD()
  DashboardFindWord
endfunction
function! BOOK_MARKS()
  DashboardJumpMarks 
endfunction
" ===
" === FZF
" ===
set rtp+=~/.fzf
let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'
let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }


" ===
" === markdown preview
" ===
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 0

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 1

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'
nnoremap <leader>pv :MarkdownPreview<CR>

" ===
" === indentLine
" ===
let g:indentLine_enabled = 1
let g:indentLine_fileTypeExclude = ['dashboard']


" ===
" === vim xkbswitch
" ===
let g:XkbSwitchEnabled = 1

" ===
" === vimwiki
" ===
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" ===
" === snazzy
" ===
let g:SnazzyTransparent = 1


" ===
" === vimspector
" ===
let g:vimspector_enable_mappings = 'HUMAN'
function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
" noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
sign define vimspectorBP text=☛ texthl=Normal
sign define vimspectorBPDisabled text=☞ texthl=Normal
sign define vimspectorPC text=🔶 texthl=SpellBad


" ===
" === vim slime
" ===
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.2"}

" ===
" === incsearch
" ===
"map /  <Plug>(incsearch-forward)
"map ?  <Plug>(incsearch-backward)
"map g/ <Plug>(incsearch-stay)
"nnoremap <Esc><Esc> :<C-u>nohlsearch<CR>
"set hlsearch
"let g:incsearch#auto_nohlsearch = 1
"map n  <Plug>(incsearch-nohl-n)
"map N  <Plug>(incsearch-nohl-N)
"map *  <Plug>(incsearch-nohl-*)
"map #  <Plug>(incsearch-nohl-#)
"map g* <Plug>(incsearch-nohl-g*)
"map g# <Plug>(incsearch-nohl-g#)


" ===
" === comfortable motion
" ===
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nnoremap <silent> <C-d> :call comfortable_motion#flick(100)<CR>
nnoremap <silent> <C-u> :call comfortable_motion#flick(-100)<CR>

nnoremap <silent> <C-f> :call comfortable_motion#flick(200)<CR>
nnoremap <silent> <C-b> :call comfortable_motion#flick(-200)<CR>

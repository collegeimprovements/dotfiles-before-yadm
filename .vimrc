
"**********************************************************************************************
"**********************************************************************************************
"*********************NeoSnippet settings from it's github page********************************
"**********************************************************************************************



let g:neosnippet#snippets_directory="/Users/arpit/.vim/neosnips"
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'


" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: pumvisible() ? "\<C-n>" : "\<TAB>"
" smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
" \ "\<Plug>(neosnippet_expand_or_jump)"
" \: "\<TAB>"

" inoremap <expr><Space> pumvisible() ? "\<C-n>" : "\<CR>"


" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif





"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return neocomplete#close_popup() . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
"inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"























 " Note: Skip initialization for vim-tiny or vim-small.
 "
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   if has("autocmd")
    filetype indent plugin on
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundle 'Shougo/neobundle.vim'
 NeoBundle 'rizzatti/dash.vim'
 NeoBundle 'Shougo/vimfiler.vim'
 NeoBundle 'Shougo/neocomplete'
 NeoBundle 'Shougo/neosnippet'
 NeoBundle 'Shougo/neosnippet-snippets'
 NeoBundle 'Shougo/neomru.vim'
 NeoBundle 'tpope/vim-rails'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'tpope/vim-endwise'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'tpope/vim-projectionist'
 NeoBundle 'tpope/vim-ragtag'
 NeoBundle 'tpope/vim-repeat'
 NeoBundle 'tpope/vim-commentary'
 NeoBundle 'tpope/vim-dispatch'
 NeoBundle 'vim-ruby/vim-ruby'
 NeoBundle 't9md/vim-ruby-xmpfilter'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'xolox/vim-misc'
 NeoBundle 'xolox/vim-notes'
 NeoBundle 'xolox/vim-easytags'
 NeoBundle 'mattn/emmet-vim'
 NeoBundle 'mattn/gist-vim'
 NeoBundle 'Chiel92/vim-autoformat'
 NeoBundle 'mustache/vim-mustache-handlebars'
 NeoBundle 'ryanoasis/vim-webdevicons'
 NeoBundle 'bling/vim-airline'
 NeoBundle 'bling/vim-bufferline'
 NeoBundle 'vim-multiple-cursors'
 NeoBundle 'terryma/vim-expand-region'
 NeoBundle 'Lokaltog/vim-easymotion'
 NeoBundle 'flazz/vim-colorschemes'
 NeoBundle 'honza/vim-snippets'
 NeoBundle 'kshenoy/vim-signature'
 NeoBundle 'mhinz/vim-startify'
 NeoBundle 'mhinz/vim-sayonara'
 NeoBundle 'powerline/powerline'
 NeoBundle 'ntpeters/vim-better-whitespace'
 NeoBundle 'majutsushi/tagbar'
 NeoBundle 'jaxbot/semantic-highlight.vim'
 NeoBundle 'nathanaelkane/vim-indent-guides'
 NeoBundle 'tmm1/ripper-tags'
 NeoBundle 'danchoi/ri.vim'
 NeoBundle 'marijnh/tern_for_vim'
 NeoBundle 'maksimr/vim-jsbeautify'
 NeoBundle 'osyo-manga/vim-over'
 NeoBundle 'othree/javascript-libraries-syntax.vim'
 NeoBundle 'othree/html5.vim'
 NeoBundle 'junegunn/vim-easy-align'
 NeoBundle 'junegunn/vim-peekaboo'
 NeoBundle 'junegunn/rainbow_parentheses.vim'
 NeoBundle 'junegunn/goyo.vim'
 NeoBundle 'junegunn/limelight.vim'
 NeoBundle 'junegunn/vim-journal'
 NeoBundle 'junegunn/vim-pseudocl'
 NeoBundle 'junegunn/vim-oblique'
 NeoBundle 'henrik/vim-indexed-search'
 NeoBundle 'vim-scripts/SearchComplete'
 NeoBundle 'jiangmiao/auto-pairs'
 NeoBundle 'elzr/vim-json'
 NeoBundle 'ap/vim-css-color'
 NeoBundle 'hail2u/vim-css3-syntax'
 NeoBundle 'cakebaker/scss-syntax.vim'
 NeoBundle 'rking/ag.vim'
 NeoBundle 'wellle/targets.vim'
 NeoBundle 'kana/vim-textobj-user'
 NeoBundle 'rhysd/vim-textobj-ruby'
 NeoBundle 'christoomey/vim-tmux-navigator'
 NeoBundle 'christoomey/vim-tmux-runner'
 " NeoBundle 'nelstrom/vim-textobj-rubyblock'
 " NeoBundle 'tmhedberg/matchit'
 " NeoBundle 'jaxbot/browserlink.vim'
 NeoBundle 'keith/investigate.vim'
 NeoBundle 'wellle/tmux-complete.vim'
 "NeoBundle 'nelstrom/vim-textobj-rubyblock'
 NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}


 NeoBundle 'Shougo/vimproc.vim', {
\ 'build' : {
\     'windows' : 'tools\\update-dll-mingw',
\     'cygwin' : 'make -f make_cygwin.mak',
\     'mac' : 'make -f make_mac.mak',
\     'linux' : 'make',
\     'unix' : 'gmake',
\    },
\ }

" NeoBundle 'Valloric/YouCompleteMe', {
     "\ 'build'      : {
      "  \ 'mac'     : './install.sh --clang-completer --system-libclang --omnisharp-completer',
     "   \ 'unix'    : './install.sh --clang-completer --system-libclang --omnisharp-completer',
    "    \ 'windows' : './install.sh --clang-completer --system-libclang --omnisharp-completer',
   "     \ 'cygwin'  : './install.sh --clang-completer --system-libclang --omnisharp-completer'
  "      \ }
 "    \ }
" Add or remove arguments to install.sh as necessary.
" Additional steps might be necessary for Windows, as always. ;)
"let g:neobundle#install_process_timeout = 1500



 " My Bundles here:
 NeoBundle 'Shougo/unite.vim'



 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 call neobundle#end()

 " Required:
 " filetype plugin indent on

" Now that all syntax plugins are in the runtime path, turn on the syntax engine
  syntax on
  filetype on
  filetype plugin on
  filetype plugin indent on



 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck

 " Here is something I stole from reddit
 set clipboard^=unnamed

 "Unite Configuration
 " Unite
" let g:unite_source_history_yank_enable = 1
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
" nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
" nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
" nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
" nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
" nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" " Custom mappings for the unite buffer
" autocmd FileType unite call s:unite_settings()
" function! s:unite_settings()
"   " Play nice with supertab
"   let b:SuperTabDisabled=1
"   " Enable navigation with control-j and control-k in insert mode
"   imap <buffer> <C-j>   <Plug>(unite_select_next_line)
"   imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
" endfunction






"VimHelp by default doesn't open help file in new tab. This is the solution
"for that.
"=====[ Show help files in a new tab, plus add a shortcut for helpg]==============

let g:help_in_tabs = 1

nmap <silent> H  :let g:help_in_tabs = !g:help_in_tabs<CR>

"Only apply to .txt files...
augroup HelpInTabs
    autocmd!
        autocmd BufEnter  *.txt   call HelpInNewTab()
        augroup END

	"Only apply to help files...
	function! HelpInNewTab ()
	    if &buftype == 'help' && g:help_in_tabs
	      "Convert the help window to a tab...
	      execute "normal \<C-W>T"
	    endif
	endfunction
"=================[Help in newtab :: FINISH]===================================================





"Set leader key. Maybe in future I'll understand difference between <leader>
"and <mapleader> and <localleader> but for now let's set it to <Space> key
let g:mapleader = "\<Space>"

"save file with <leader>w ==============
noremap <Leader>w :w<CR>

"close file with <leader>x and forced close :q! with <leader>xx =================
noremap <leader>x :q<CR>
noremap <leader>xx :q!<CR>
noremap <silent><leader>vv :tabnew ~/dotfiles/.vimrc<CR>






"Few essential changes that makes vim a better editor and give us less wtf
"moments

" Case insensitive search
set ignorecase
set smartcase

set expandtab "tabs are spaces
set shiftwidth=2
set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 "number of spaces in tab when editing
set smarttab

set autoindent "Set autoindent

"from https://github.com/Valloric/dotfiles/blob/master/vim/vimrc.vim
" key bindings for quickly moving between windows
" h left, l right, k up, j down
noremap <leader>h <c-w>h
noremap <leader>l <c-w>l
noremap <leader>k <c-w>k
noremap <leader>j <c-w>j




"=========================== UI Config ==================================
"Set line numbers and relative line numbers -  at this point I think they are
"more helpful
set number
" set relativenumber "because it's making vim extremely slow specially in ruby files

set showcmd " show command in bottom bar

filetype indent on      " load filetype-specific indent files


" Set to auto read when a file is changed from the outside
set autoread

" Disable backup and swap files
set nobackup
set noswapfile

" Use the OS clipboard
set clipboard=unnamed


" allow buffer switching without saving
set hidden



" How many lines to scroll at a time, make scrolling appears faster
set scrolljump=3


"Programming Related Stuff
"1. Enable Syntax
syntax enable








"******************************************************************************************************************
"******************************************************************************************************************
"******************************************************************************************************************
"***************************************Plugin Related Settings****************************************************
"******************************************************************************************************************
"******************************************************************************************************************
"******************************************************************************************************************
"******************************************************************************************************************
"
"
"******************************************************************************************************************
"*************************************** Ruby Text Object *********************************************************
"******************************************************************************************************************

let g:textobje_ruby_more_mappings = 0
let g:textobj_ruby_more_mappings = 1

"******************************************************************************************************************
"******************************************************************************************************************








"**************************************** Vimfiler ****************************************************************
let g:vimfiler_as_default_explorer = 1
" No need for this : just use gs to toggle safe mode
" " Enable file operation commands.
"   " Edit file by tabedit.
"   call vimfiler#custom#profile('default', 'context', {
"         \ 'safe' : 0,
"         \ })
nnoremap <leader>n :VimFilerExplorer<CR>
let g:vimfiler_enable_auto_cd = 1
"****************************************END Vimfiler END *********************************************************
"
"
"Testing purposes
" Set color for cursor line and column
highlight CursorLine ctermbg=232
highlight CursorColumn ctermbg=232


""for normal mode when going to next line go to the start
" Wrapped lines goes down/up to next row, rather than next line in file.
nnoremap j gj
nnoremap k gk


" Set Ctrl+S to save the file in all modes
nnoremap <silent> <c-s> :update<cr>
vnoremap <silent> <c-s> <c-c>:update<cr>
inoremap <silent> <c-s> <c-o>:update<cr>


"cursorline :: highlight the current line
" Enable mouse support for Visual and Normal modes
set mouse=vn
set ttymouse=xterm2
set ttyfast






" Show status line
set laststatus=2

" Change dir to file path on ,d ****** from: https://github.com/jaxbot/vimfiles/blob/master/vimrc ******
nnoremap ,d :lcd %:p:h<CR>


" enable ruby omnicomplete
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1






" Map Q to repeat the last recorded macro
nmap Q @@



" Custom Invisibles
" invisibles list listchars custom
" set list
" set listchars=tab:▸\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
" set showbreak=↪




"***********************************************************************************************************************************
"***********************************************************************************************************************************
"************************************************ vim textobj-rubyblock ************************************************************
"***********************************************************************************************************************************

"***********************************************************************************************************************************
"***********************************************************************************************************************************



"***********************************************************************************************************************************
"***********************************************************************************************************************************
"**************************Unite Settings : http://mouki.io/2013/08/15/Vim-CtrlP-behaviour-with-Unite.html**************************
"***********************************************************************************************************************************
"***********************************************************************************************************************************
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Unite
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10

call unite#custom_source('file_rec,file_rec/async,file_mru,file,buffer,grep',
      \ 'ignore_pattern', join([
      \ '\.git/',
      \ ], '\|'))

call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])

nnoremap <C-P> :<C-u>Unite  -buffer-name=files   -start-insert buffer file_rec/async:!<cr>

autocmd FileType unite call s:unite_settings()

function! s:unite_settings()
  let b:SuperTabDisabled=1
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction



"******************************************************************************
" Unite mappings : from https://github.com/jaxbot/vimfiles/blob/master/vimrc
"******************************************************************************
" call unite#filters#matcher_default#use(['matcher_fuzzy'])
" call unite#filters#sorter_default#use(['sorter_rank'])
" call unite#set_profile('files', 'smartcase', 1)
" call unite#custom#profile('files', 'filters', ['sorter_rank'])
" call unite#custom#source('line,outline','matchers','matcher_fuzzy')
" call unite#custom#source('file_rec', 'ignore_pattern', 'node_modules/')
" call unite#custom#source('file_rec', 'ignore_pattern', '.git/')
" let g:unite_source_history_yank_enable = 1
" nnoremap <leader>e :Unite -start-insert file_mru<cr>
" nnoremap <leader>f :Unite -start-insert file_rec<cr>
" nnoremap <leader>s :Unite -start-insert buffer<cr>
" nnoremap <leader>y :Unite history/yank<cr>






"***********************************************************************************************************************************
inoremap jk <esc>
inoremap kj <esc>

"***********************************************************************************************************************************
"***********************************************************************************************************************************
"********************NeoComplete Settings : https://github.com/jaxbot/vimfiles/blob/master/vimrc************************************
"***********************************************************************************************************************************
"***********************************************************************************************************************************
" Neocomplete
" Automatically suggest things
let g:neocomplete#enable_at_startup = 1
" test matches Test and test, but Test only matches Test
let g:neocomplete#enable_smart_case = 1
" Show starting at 2 characters
let g:neocomplete#sources#syntax#min_keyword_length = 2
" inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "<CR>"
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"









" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'






let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
 " Define keyword.
    let g:neocomplete#keyword_patterns = {}
    let g:neocomplete#keyword_patterns._ = '\h\w*'
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.ruby = '[^. *\t]\.\h\w*\|\h\w*::'
let g:neocomplete#sources#vim#complete_functions = {
        \     'Unite': 'unite#complete_source',
        \     'VimShell': 'vimshell#complete',
        \     'VimFiler': 'vimfiler#complete',
        \ }














" *******************************************************************************************
" *******************************************************************************************
" *******************************************************************************************
" *****************ruby-xmpfilter settings***************************************************
" *******************************************************************************************
" *******************************************************************************************
let g:xmpfilter_cmd = "seeing_is_believing"

autocmd FileType ruby nmap <buffer> <D-m> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby xmap <buffer> <D-m> <Plug>(seeing_is_believing-mark)
autocmd FileType ruby imap <buffer> <D-m> <Plug>(seeing_is_believing-mark)

autocmd FileType ruby nmap <buffer> <leader>l <Plug>(seeing_is_believing-clean)
autocmd FileType ruby xmap <buffer> <D-c> <Plug>(seeing_is_believing-clean)
autocmd FileType ruby imap <buffer> <D-c> <Plug>(seeing_is_believing-clean)

" xmpfilter compatible
autocmd FileType ruby nmap <buffer> <F6> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby xmap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)
autocmd FileType ruby imap <buffer> <D-r> <Plug>(seeing_is_believing-run_-x)

" auto insert mark at appropriate spot.
autocmd FileType ruby nmap <buffer> <F5> <Plug>(seeing_is_believing-run)
autocmd FileType ruby xmap <buffer> <F5> <Plug>(seeing_is_believing-run)
autocmd FileType ruby imap <buffer> <F5> <Plug>(seeing_is_believing-run)





" Gvim
" nmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
" xmap <buffer> <M-r> <Plug>(seeing-is-believing-run)
" imap <buffer> <M-r> <Plug>(seeing-is-believing-run)

" nmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
" xmap <buffer> <M-m> <Plug>(seeing-is-believing-mark)
" imap <buffer> <M-m> <Plug>(seeing-is-believing-mark)

" " Terminal
" nmap <buffer> <F5> <Plug>(seeing-is-believing-run)
" xmap <buffer> <F5> <Plug>(seeing-is-believing-run)
" imap <buffer> <F5> <Plug>(seeing-is-believing-run)

" nmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
" xmap <buffer> <F4> <Plug>(seeing-is-believing-mark)
" imap <buffer> <F4> <Plug>(seeing-is-believing-mark)













" *************************************************************************************
" *************************************************************************************
" ************************Vim-Monster**************************************************
" *************************************************************************************
" Set async completion.
let g:monster#completion#rcodetools#backend = "async_rct_complete"

" Use neocomplete.vim
let g:neocomplete#sources#omni#input_patterns = {
\   "ruby" : '[^. *\t]\.\w*\|\h\w*::',
\}
" *************************************************************************************
" *************************************************************************************
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"From : https://github.com/jelera/vim-javascript-syntax
au FileType javascript call JavaScriptFold()
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
" ********************************************************************************************
" *******************Syntastic***************************************************
" ********************************************************************************************
" ********************************************************************************************
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1




"
" ********************************************************************************************
" *******************tmux-complete***************************************************
" ********************************************************************************************
" ********************************************************************************************

" let g:tmuxcomplete#trigger = 'completefunc'
let g:tmuxcomplete#trigger = ''









" ********************************************************************************************
"******************************* VimEasyAlign *******************************
" ********************************************************************************************
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
"****************************************************************************
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
"
" ********************************************************************************************
" ********************************************************************************************
" ***********************************************Autoformat**************************
noremap <F3> :Autoformat<CR>
" au BufWrite * :Autoformat





" ********************************************************************************************
" ********************************************************************************************
" ***************************Vim Expand Region************************************************
map K <Plug>(expand_region_expand)
map J <Plug>(expand_region_shrink)








"**********************************************************************************************
"**********************************************************************************************
"*****************************Syntastic****************************************************
"**********************************************************************************************
let g:syntastic_mode_map={ 'mode': 'active',
                     \ 'active_filetypes': [],
                     \ 'passive_filetypes': ['html'] }

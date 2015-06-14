 " Note: Skip initialization for vim-tiny or vim-small.
 if 0 | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundle 'Shougo/neobundle.vim'
 NeoBundle 'Shougo/vimfiler.vim'
 NeoBundle 'Shougo/neocomplete'
 NeoBundle 'Shougo/neosnippet'
 NeoBundle 'Shougo/neosnippet-snippets'
 NeoBundle 'tpope/vim-rails'
 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'tpope/vim-projectionist'
 NeoBundle 'tpope/vim-ragtag'
 NeoBundle 'tpope/vim-repeat'
 NeoBundle 'tpope/vim-commentary'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'xolox/vim-misc'
 NeoBundle 'xolox/vim-notes'
 NeoBundle 'mattn/emmet-vim'
 NeoBundle 'mattn/gist-vim'
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
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck


 "Unite Configuration
 " Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>t :<C-u>Unite -no-split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>f :<C-u>Unite -no-split -buffer-name=files   -start-insert file<cr>
nnoremap <leader>r :<C-u>Unite -no-split -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>y :<C-u>Unite -no-split -buffer-name=yank    history/yank<cr>
nnoremap <leader>e :<C-u>Unite -no-split -buffer-name=buffer  buffer<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

























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
set relativenumber

set showcmd " show command in bottom bar

filetype indent on      " load filetype-specific indent files


" Set to auto read when a file is changed from the outside
set autoread
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
"**************************************** Vimfiler ****************************************************************
let g:vimfiler_as_default_explorer = 1

"****************************************END Vimfiler END *********************************************************
"
"
"Testing purposes
" Set color for cursor line and column
highlight CursorLine ctermbg=232
highlight CursorColumn ctermbg=232


""for normal mode when going to next line go to the start
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

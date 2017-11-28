" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" Pathogen
execute pathogen#infect()
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
syntax on
filetype plugin indent on


"'''''''''''''''''''''''''''''''''' VUNDLE'''''''''''''''''''''''''''
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Bundle 'Valloric/YouCompleteMe'
Bundle "matze/vim-move"
Bundle "sumpygump/php-documentor-vim"
Bundle "stanangeloff/php.vim"
Bundle "othree/html5.vim"
Bundle "pangloss/vim-javascript"
Bundle "evidens/vim-twig"
Bundle "tpope/vim-fugitive"
Bundle "sirver/ultisnips"
Bundle "honza/vim-snippets"
Bundle "vim-scripts/SyntaxAttr.vim"
Bundle "ctrlpvim/ctrlp.vim"
Bundle "easymotion/vim-easymotion"
Bundle "mattn/emmet-vim"
Bundle "raimondi/delimitmate"
Bundle "scrooloose/syntastic"
Bundle "scrooloose/nerdcommenter"
Bundle "terryma/vim-multiple-cursors"
Bundle "arnaud-lb/vim-php-namespace"
Bundle "tpope/vim-surround"
Bundle "godlygeek/tabular"
Bundle "damage220/solas.vim"
Bundle "scrooloose/nerdtree"
Bundle "corntrace/bufexplorer"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "Lokaltog/vim-powerline"


Plugin 'derekwyatt/vim-scala'
Plugin 'udalov/kotlin-vim'

Plugin 'airblade/vim-gitgutter'
"Plugin 'vim-airline/vim-airline'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'kien/rainbow_parentheses.vim'

Plugin 'junegunn/fzf'
Plugin 'junegunn/limelight.vim'

" Plugin 'ktvoelker/sbt-vim'

" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
"
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
"set ignorecase		" Do case insensitive matching
"set smartcase		" Do smart case matching
"set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden		" Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

set tabstop=2
set shiftwidth=2
set noet ci pi sts=0
set autoindent
set noexpandtab

set smarttab
set et
set wrap
set ai
set cin
set showmatch 
set hlsearch
set incsearch
set ignorecase
set lz
set listchars=eol:¬,tab:__,trail:~,extends:>,precedes:<,space:·
set list
set ffs=unix,dos,mac
set fencs=utf-8,cp1251,koi8-r,ucs-2,cp866
set mouse=a
set mps+=<:>
" set foldmethod=indent

" some other matrix's staff
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0
set ignorecase
"set hlsearch
set number
set relativenumber
set cursorline

set clipboard=unnamedplus

" some plugins setup
let g:UltiSnipsExpandTrigger="<c-l>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
nnoremap <Tab> :NERDTreeToggle<CR>

nnoremap <c-l> :Limelight!!<CR>

"set GitGutterEnable

" vnoremap <C-c> "*y"
"set rtp+=/usr/share/powerline/bindings/vim/
set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/

set laststatus=2
set t_Co=256
"set term=xterm-256color
set termencoding=utf-8
"set guifont=Ubuntu\ Mono\ derivative\ Powerline:10
"set guifont=Ubuntu\ Mono
"let g:Powerline_symbols = 'fancy'

map <BS> <plug>NERDCommenterToggle

for c in range(1, 9)
  exec "set <A-".c.">=\e".c
  exec "map \e".c." <A-".c.">"

  let n = c - '0'
  exec "map <M-". n ."> ". n ."gt"
endfor

"move
let g:move_key_modifier = 'C'

if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

syntax enable
colorscheme monokai


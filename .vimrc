"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Maintainer: 
"       Tarun Kumar — tarun-kmr
"       -> https://github.com/tarun-kmr
"
" Sections:
"    -> General
"    -> Source VIM Plugins
"    -> ALE Fixers
"    -> VIM user interface
"    -> Text, tab and indent related
"    -> Plugin shortcuts
"    -> Colors and Fonts
"    -> Customizing Plugins
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" XXX:To install any plugin in Vim Put the piece of code defined below
"   in ~/.vim/plugins.vim and also you can define your new/favourite 
"   plugin and to source it put this code in your .vimrc file 
"      code --> so ~/.vim/plugins.vim
"   after that open vim and run :PluginInstall
"     
"   set rtp+=~/.vim/bundle/Vundle.vim
"
"   call vundle#begin()
"   Plugin 'VundleVim/Vundle.vim'
"   Plugin 'airblade/vim-gitgutter'
"   Plugin 'editorconfig/editorconfig-vim'
"   Plugin 'itchyny/lightline.vim'
"   Plugin 'junegunn/fzf'
"   Plugin 'junegunn/fzf.vim'
"   Plugin 'mattn/emmet-vim'
"   Plugin 'scrooloose/nerdtree'
"   Plugin 'terryma/vim-multiple-cursors'
"   Plugin 'tpope/vim-eunuch'
"   Plugin 'tpope/vim-surround'
"   Plugin 'w0rp/ale'
"   call vundle#end()
"
"   filetype plugin indent on
"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Set number line on VIM
set number
" set relativenumber

" Set tab length to 4(spaces)
set tabstop=4 shiftwidth=4 expandtab

" Set color column to 80 spaces for neat and clean code
set colorcolumn=80

" Split the vertical split on the right side
set splitright

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Source the Plugins define in the plugins.vim file
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Sourcing plugins
so ~/.vim/plugins.vim

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Always show current position
set ruler

" Makes search act like search in modern browsers
"set incsearch

" Highlight search results
set hlsearch

" No annoying sound on errors
"set noerrorbells
"set novisualbell
"set t_vb=
"set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" To open NERDTree with Ctrl+f (you can set whatever key you want)
map <C-f> :NERDTreeToggle<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Setting font size
set guifont=Bitstream\ Vera\ Sans\ Mono:h20

" Enable syntax highlighting
syntax enable 

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme afterglow
catch
endtry

syntax on

set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Customizing Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" ALE<Asynchronous Lint Engine> Fixers 
let b:ale_linters = ['flake8']
let g:ale_completion_enabled = 1

"NERDTree custom
" Show hidden files in nerd tree
let NERDTreeShowHidden=1

set guifont=Monaco:h11
set linespace=2

"Automatically_removing_all_trailing_whitespace
autocmd BufWritePre *.py :%s/\s\+$//e
autocmd BufWritePre *.xml :%s/\s\+$//e

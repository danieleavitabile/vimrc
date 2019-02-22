set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'

Plugin 'kien/ctrlp.vim'

" Plugin 'LaTeX-Suite-aka-Vim-LaTeX'
Plugin 'vim-latex/vim-latex'

Plugin 'tpope/vim-fugitive'

" Plugin 'scrooloose/syntastic'

Plugin 'scrooloose/nerdtree'
"autocmd vimenter * NERDTree

Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'JuliaEditorSupport/julia-vim'

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

Plugin 'jpalardy/vim-slime'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Solarized theme settings -------------------------------------------------
syntax enable
set background=dark
colorscheme solarized

" LATEX Settings -----------------------------------------------------------
" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse latex-suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
set sw=2

" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" Prevents Vim 7.0 from setting filetype to 'plaintex'
let g:tex_flavor='latex'

" Automatic breaking lines
set textwidth=85
"
" Show lines and columns
set ruler

" " Syntastic settings ----------------------------------------------------------
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" let g:syntastic_quiet_messages = {"regex": "Wrong length of dash may have been used."}
" let g:syntastic_quiet_messages = {"regex": "Delete this space to maintain correct pagereferences."}
" let g:syntastic_quiet_messages = {"regex": "You should put a space in front of parenthesis."}

" Markdown settings ----------------------------------------------------------
let g:vim_markdown_math = 1

" Generic settings ----------------------------------------------------------
"
" Be always in the directory of the actual file
autocmd BufEnter * cd %:p:h

" Spell check always on for .tex, .txt, .md files
au BufRead,BufNewFile *.tex set spell
au BufRead,BufNewFile *.txt set spell
au BufRead,BufNewFile *.md set spell
"au BufRead,BufNewFile *.md set textwidth=105

" Omni completion on
set omnifunc=syntaxcomplete#Complete

" Text wrapping
" set wrap
" set linebreak
" set nolist  " list disables linebreak
" set textwidth=0
" set wrapmargin=0
"
runtime macros/matchit.vim



filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'rizzatti/funcoo.vim'
" Plugin 'rizzatti/dash.vim'
"Plugin 'vim-less'
Plugin 'groenewege/vim-less'
Plugin 'Markdown'
Plugin 'fugitive.vim'
Plugin 'ragtag.vim'
Plugin 'gmarik/vundle'
"Plugin 'css_color.vim'

" snipmate
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'
"Plugin 'garbas/vim-snipmate'
" Plugin 'honza/vim-snippets'

" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-obsession.git'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/syntastic'
Plugin 'majutsushi/tagbar'

" All of your Plugins must be added before the following line
call vundle#end() " required

filetype plugin indent on " required
syntax on
" les themes se trouvent dans ~/.vim/colors/
"colorscheme sorcerer
colorscheme slate
set bg=light 

"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

set autoindent
set expandtab
set shiftwidth=2
set smartindent
set smarttab
set tabstop=2

set autoread
set autowrite

set backupcopy=yes
set backupdir=$HOME/.vim/backup
set nobackup
set nowritebackup

set directory=~/.vim/swap,~/tmp,.
set noswapfile

set undodir=~/.vim/undo
set undofile
set undoreload=10000

set foldlevel=100
set foldmethod=marker
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

if has("mouse")
  set mouse=a
endif
"set mouse+=a
set mousehide

set visualbell t_vb=
set noerrorbells
set novisualbell

"set number
set numberwidth=4
set relativenumber
autocmd BufEnter * set relativenumber

set showcmd
set showmatch

set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2
set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set clipboard+=unnamed
set encoding=utf-8
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
set hidden
set history=256
set matchtime=5
set modeline
set nowrap
set report=0
set shell=bash
set shortmess=atI
"set syntax=on
set timeoutlen=250
set wildmenu

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"

" visual mode
nnoremap v <C-V>
nnoremap <C-V> v
xnoremap v <C-V>
xnoremap <C-V> v

" drag visual block
xnoremap <C-K> xkP`[V`]
xnoremap <C-J> xp`[V`]
xnoremap <C-L> >gv
xnoremap <C-H> <gv

" H and L to beginning and end of line
noremap K H
noremap J L
" H and L to beginning and end of line
noremap H ^
noremap L $

" disable arrow keys
nnoremap <up>    <NOP>
nnoremap <down>  <NOP>
nnoremap <right> <NOP>
nnoremap <left>  <NOP>
inoremap <up>    <NOP>
inoremap <down>  <NOP>
inoremap <right> <NOP>
inoremap <left>  <NOP>

" hit Enter to go to end of file.
nnoremap <CR> G
" hit Backspace to go to beginning of file.
nnoremap <BS> gg

" type <Space>w to save file (lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>v V

" automatically jump to end of text you pasted:
" i can paste multiple lines multiple times with simple ppppp.
xnoremap <silent> y y`]
xnoremap <silent> p p`]
nnoremap <silent> p p`]

" manage tab pages
"nnoremap tt :tabedit<Space>
"nnoremap Z  :tabprev<CR>
"nnoremap X  :tabnext<CR>

" scrolling
" nnoremap <C-U> <C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y><C-Y>
" nnoremap <C-D> <C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E><C-E>

" pasting
nnoremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>
nnoremap <leader>P :set paste<CR>"*P<CR>:set nopaste<CR>

" clean whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

augroup ShowMode
    autocmd!
    autocmd InsertLeave * hi Cursor guibg=red
    autocmd InsertEnter * hi Cursor guibg=green
augroup END

augroup Automatic
    autocmd!
    " automatically jump to last known position in a file
    autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
    " automatically reload vimrc when it's saved
    autocmd BufWritePost ~/.vimrc source %
augroup END

" nerdtree
let NERDTreeShowBookmarks = 1
let NERDTreeWinSize       = 52
let NERDTreeShowHidden    = 1
"nnoremap <silent> n :NERDTreeToggle<CR>

" powerline
let g:Powerline_symbols = 'fancy'
 
" syntastic
let g:syntastic_enable_signs       = 1
let g:syntastic_auto_loc_list      = 1
let g:syntastic_disabled_filetypes = ['html', 'sass', 'less']
let g:syntastic_stl_format         = '[%E{Error 1/%e: line %fe}%B{, }%W{Warning 1/%w: line %fw}]'
let g:syntastic_jsl_conf           = '$HOME/.jshintrc'
let g:syntastic_jshint_conf        = '$HOME/.jshintrc'

"folding settings
"`za` - toggles; `zc` - closes; `zo` - opens; `zR` - open all; `zM` - close all
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

" https://www.reddit.com/r/vim/comments/2t4axi/open_a_less_file_without_the_extension/
autocmd FileType less setlocal suffixesadd=.less
autocmd FileType scss setlocal suffixesadd=.scss

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"stylus file
autocmd BufNewFile,BufRead *.styl set filetype=stylus

" vim-airline
let g:airline#extensions#tabline#enabled = 1

" manage buffers 
nmap tt :e<Space>
nmap Z  :bp<CR>
nmap X  :bn<CR>

" autocompletion by langage: <C-xo>
set omnifunc=syntaxcomplete#Complete

" Proper Ctags locations
let g:tagbar_ctags_bin='/usr/local/bin/ctags'  
" Default is 40, seems too wide
let g:tagbar_width=26                          
" Display panel with y (or ,y)
nmap <Leader>t :TagbarToggle       

 " When writing a file, if there are errors, have Syntastic plugin mark them
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1


filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rizzatti/funcoo.vim'
Plugin 'groenewege/vim-less'
Plugin 'Markdown'
Plugin 'fugitive.vim'
Plugin 'ragtag.vim'
Plugin 'gmarik/vundle'
"Plugin 'css_color.vim'

" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'rstacruz/vim-ultisnips-css'
"Plugin 'rstacruz/vim-hyperstyle'

"http://www.terminally-incoherent.com/blog/2014/04/02/3-tiny-vim-plugins-that-will-make-your-life-easier/
"html
Plugin 'Valloric/MatchTagAlways'
Plugin 'edsono/vim-matchit'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-obsession.git'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tristen/vim-sparkup'
"js
Plugin 'marijnh/tern_for_vim'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'

"Bundle 'https://github.com/gorodinskiy/vim-coloresque.git'
Plugin 'gorodinskiy/vim-coloresque.git'
"auto complete
"Plugin 'Shougo/neocomplete'

"Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
 
Plugin 'kien/ctrlp.vim'

"visual increment a column visual-increment.vim - use CTRL+A/X to create increasing sequence of numbers or letters via visual mode
Plugin 'triglav/vim-visual-increment'

Plugin '4Evergreen4/vim-hardy' 

"JSON
Plugin 'elzr/vim-json'

"CTAGS
"https://github.com/craigemery/vim-autotag
"Plugin 'craigemery/vim-autotag' 
"https://github.com/ludovicchabant/vim-gutentags
Plugin 'ludovicchabant/vim-gutentags' 

" All of your Plugins must be added before the following line
call vundle#end() " required


filetype plugin indent on " required
filetype indent on
syntax on
" les themes se trouvent dans ~/.vim/colors/
"colorscheme sorcerer
colorscheme slate
set bg=light 

"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"set smartindent
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
"set nobackup
"set nowritebackup
set directory=~/.vim/swap,~/tmp,.
set swapfile
set dir=~/tmp

"http://nathan-long.com/blog/vim-a-few-of-my-favorite-things/
if exists("&undodir")
    set undofile          "Persistent undo! Pure money.
    let &undodir=&directory
    set undolevels=500
    set undoreload=5000
endif



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

set complete=.,w,b,u,t,i,kspell

" http://sheerun.net/2014/03/21/how-to-boost-your-vim-productivity/
let mapleader = "\<Space>"


" drag visual block
"xnoremap <C-K> xkP`[V`]
"xnoremap <C-J> xp`[V`]
"xnoremap <C-L> >gv
"xnoremap <C-H> <gv

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
" but bad idea, because I use it with ex-mode
"nnoremap <CR> G
" hit Backspace to go to beginning of file.
"nnoremap <BS> gg

" type <Space>w to save file (lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :wq<CR>

" automatically jump to end of text you pasted:
" i can paste multiple lines multiple times with simple ppppp.
"xnoremap <silent> y y`]
"xnoremap <silent> p p`]
"nnoremap <silent> p p`]

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
let NERDTreeWinSize       = 22
let NERDTreeShowHidden    = 1
"nnoremap <silent> n :NERDTreeToggle<CR>

" powerline
let g:Powerline_symbols = 'fancy'
 
" syntastic
 " When writing a file, if there are errors, have Syntastic plugin mark them
let g:syntastic_enable_signs       = 1
let g:syntastic_auto_loc_list      = 1
"let g:syntastic_disabled_filetypes = ['html', 'sass', 'less']
let g:syntastic_stl_format         = '[%E{Error 1/%e: line %fe}%B{, }%W{Warning 1/%w: line %fw}]'
let g:syntastic_jsl_conf           = '$HOME/.jshintrc'
let g:syntastic_jshint_conf        = '$HOME/.jshintrc'
let syntastic_mode_map = { 'passive_filetypes': ['html'] } " turn off html
" hide the error for ng-*
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_less_checkers = ['']


" https://www.reddit.com/r/vim/comments/2t4axi/open_a_less_file_without_the_extension/
autocmd FileType less setlocal suffixesadd=.less
autocmd FileType scss setlocal suffixesadd=.scss
"stylus file
autocmd BufNewFile,BufRead *.styl set filetype=stylus

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" vim-airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1
"let g:airline_symbols
"let g:AirlineTheme = molokai
"


if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

set t_Co=256

" manage buffers 
nmap tt :tabedit<Space>
nnoremap Z  :tabprev<CR>
nnoremap X  :tabnext<CR>
"nmap tt :e<Space>
"nmap Z :bp<CR>
"nmap X :bn<CR>

" autocompletion by langage: <C-xo>
set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

" autocomplete Tern
let g:tern_map_keys=1
let g:tern_show_argument_hints="on_hold"

" Proper Ctags locations
"let g:tagbar_ctags_bin='/usr/local/bin/ctags'  
" Default is 40, seems too wide
"let g:tagbar_width=26                          
" Display panel with y (or ,y)
"nmap <Leader>t :TagbarToggle<CR>


"map echape
imap jk <esc>

"Plugin interestingwords
"nnoremap <silent> <leader>m :call InterestingWords('n')<cr>
"nnoremap <silent> <leader>M :call UncolorAllWords()<cr>
"nnoremap <silent> n :call WordNavigation('forward')<cr>
"nnoremap <silent> N :call WordNavigation('backward')<cr>
"let g:interestingWordsGUIColors = ['#99B3FF', '#B399FF', '#E699FF', '#FF99B3', '#99FFE6', '#FFD65C', '#99FFB3', '#E6FF99', '#FFB399', '#5CD6FF', '#99FF99', '#FFF6CC']
"let g:interestingWordsRandomiseColors = 1

nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>

"MatchTagAlways
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = { 'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jinja' : 1, 'php' : 1, 'css' : 1, 'scss' : 1 }


" visual mode
nnoremap v <C-V>
nnoremap <C-V> v
"xnoremap v <C-V>
"xnoremap <C-V> v
nnoremap <Leader>v V
" Fix linewise visual selection of various text objects
"nnoremap VV V
nmap Vit vitVkoj
nmap Vat vatV
nmap Vab vabV
nmap VaB vaBV


" Don't move on *
" I'd use a function for this but Vim clobbers the last search when you're in
" a function so fuck it, practicality beats purity.
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>


"folding settings
"`za` - toggles; `zc` - closes; `zo` - opens; `zR` - open all; `zM` - close all
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use
"FOLD
"set foldlevel=100
"set foldmethod=marker
"set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

set foldlevelstart=0

" Space to toggle folds.
"nnoremap <Space> za
"vnoremap <Space> za

" Make zO recursively open whatever fold we're in, even if it's partially open.
nnoremap zO zczO

" "Focus" the current line.  Basically:
"
" 1. Close all folds.
" 2. Open just the folds containing the current line.
" 3. Move the line to a little bit (15 lines) above the center of the screen.
" 4. Pulse the cursor line.  My eyes are bad.
"
" This mapping wipes out the z mark, which I never use.
"
" I use :sus for the rare times I want to actually background Vim.
"nnoremap <c-z> mzzMzvzz15<c-e>`z:Pulse<cr>

function! MyFoldText() " {{{
    let line = getline(v:foldstart)

    let nucolwidth = &fdc + &number * &numberwidth
    let windowwidth = winwidth(0) - nucolwidth - 3
    let foldedlinecount = v:foldend - v:foldstart

    " expand tabs into spaces
    let onetab = strpart('          ', 0, &tabstop)
    let line = substitute(line, '\t', onetab, 'g')

    let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
    let fillcharcount = windowwidth - len(line) - len(foldedlinecount)
    return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . '…' . ' '
endfunction " }}}
set foldtext=MyFoldText()

"nnoremap <Leader>w :w<CR>
map <Leader>y :r! date +\%s<cr>

"indent a json file
nmap =j :%!python -m json.tool<CR>

map <Leader>c :%s///gn<ENTER>

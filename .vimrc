set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rizzatti/funcoo.vim'

"Hardtime helps you break that annoying habit vimmers have of scrolling up and down the page using jjjjj and kkkkk but without compromising the rest of our vim experience.
Plugin 'takac/vim-hardtime' 
"Plugin 'Markdown'
"Plugin 'JamshedVesuna/vim-markdown-preview' 
Plugin 'suan/vim-instant-markdown' 

Plugin 'fugitive.vim'
Plugin 'ragtag.vim'
Plugin 'gmarik/vundle'

"highlight a word
Plugin 'vasconcelloslf/vim-interestingwords'

"ascii art
Plugin 'fadein/vim-FIGlet'

"css
Plugin 'rstacruz/vim-ultisnips-css'
"Plugin 'rstacruz/vim-hyperstyle'
Plugin 'gorodinskiy/vim-coloresque.git'
Plugin 'wavded/vim-stylus' 

"auto complete
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
"YouCompleteMe: brew install cmake
"Plugin 'Valloric/YouCompleteMe' 
"autocompletion with the tab for all langage
Plugin 'ervandew/supertab'  

"http://www.terminally-incoherent.com/blog/2014/04/02/3-tiny-vim-plugins-that-will-make-your-life-easier/
"syntax
Plugin 'scrooloose/syntastic'

Plugin 'tmhedberg/matchit'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-obsession.git'
Plugin 'bling/vim-airline'
Plugin 'tristen/vim-sparkup'

"javascripts
Plugin 'marijnh/tern_for_vim'
"help for the symtax color 
Plugin 'jelera/vim-javascript-syntax' 
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'burnettk/vim-angular' 
Plugin 'Valloric/MatchTagAlways'
Plugin 'HerringtonDarkholme/yats.vim' 
"React  
"https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
Plugin 'mxw/vim-jsx'

"node
Plugin 'moll/vim-node' 

"browser in terminal with synchronisation
Plugin 'jaxbot/browserlink.vim' 

Plugin 'scrooloose/nerdtree'
"Ranger
"Plugin 'francoiscabrol/ranger.vim' 

"comment
Plugin 'scrooloose/nerdcommenter'

"Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin' 

"file
Plugin 'ctrlpvim/ctrlp.vim'

"jade
Plugin 'digitaltoad/vim-pug'

"visual increment a column visual-increment.vim - 
"use CTRL+A/X to create increasing sequence of numbers or letters via visual mode
Plugin 'triglav/vim-visual-increment'

"Arduino
"Plugin '4Evergreen4/vim-hardy' 

"JSON
Plugin 'elzr/vim-json'

"CTAGS
"https://github.com/craigemery/vim-autotag
"Plugin 'craigemery/vim-autotag' 
"https://github.com/ludovicchabant/vim-gutentags
"Plugin 'ludovicchabant/vim-gutentags' 


"write a gist file
Plugin 'mattn/webapi-vim'
"Plugin 'mattn/gist-vim'

"WordPress & PHP
Plugin 'dsawardekar/wordpress.vim' 
Plugin 'StanAngeloff/php.vim'

"open a word or a link in the browser
Plugin 'tyru/open-browser.vim'

"documentation
Plugin 'keith/investigate.vim' 
"devdoc.io
Plugin 'rhysd/devdocs.vim'  
"nice icons in NERDTree
"Plugin 'ryanoasis/vim-devicons'

"Translate
"Plugin 'iadept/vim-gtranslate' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

filetype indent on
syntax on

"https://github.com/xavierartot/spf13-vim/blob/3.0/.vimrc
"set cursorline                  " Highlight current line
"highlight clear SignColumn      " SignColumn should match background
"highlight clear LineNr          " Current line number row will have same background color in relative mode


"The system defined color schemes are located in $VIM/colors
"to find the theme :echo $VIM in vim.
colorscheme slate
set bg=light 


"set smartindent
set autoindent
set smartindent
set expandtab
set tabstop=2
set smarttab
set shiftwidth=2

set autoread
set autowrite

set backupcopy=yes
set backupdir=$HOME/.vim/backup
set directory=~/.vim/swap,~/tmp,.
set swapfile
set dir=~/tmp

"set noswapfile
"set nowritebackup
"set nobackup

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
"set relativenumber
"autocmd BufEnter * set relativenumber
set relativenumber 
set number    

set showcmd
set showmatch

set hlsearch
set incsearch
set ignorecase
set smartcase

set laststatus=2
set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l

set clipboard+=unnamed

"font for vim-devicons
set encoding=utf-8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
set hidden
set history=256
set matchtime=5
set modeline
set nowrap
set report=0
set shell=bash
set shortmess=atI
set timeoutlen=250
"display all matching file when we tab complete
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
"nnoremap <up>    <NOP>
"nnoremap <down>  <NOP>
"nnoremap <right> <NOP>
"nnoremap <left>  <NOP>
"inoremap <up>    <NOP>
"inoremap <down>  <NOP>
"inoremap <right> <NOP>
"inoremap <left>  <NOP>

" automatically jump to end of text you pasted:
" i can paste multiple lines multiple times with simple ppppp.
"xnoremap <silent> y y`]
"xnoremap <silent> p p`]
"nnoremap <silent> p p`]

" pasting avoid to use p and o
"nnoremap <leader>p :set paste<CR>"*p<CR>:set nopaste<CR>

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

let g:syntastic_php_phpcs_args = '--standard=WordPress-Core'

" This does what it says on the tin. It will check your file on open too, not just on save.
" You might not want this, so just leave it out if you don't.
let g:syntastic_check_on_open=1

"React  https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']

" https://www.reddit.com/r/vim/comments/2t4axi/open_a_less_file_without_the_extension/
autocmd FileType less setlocal suffixesadd=.less
autocmd FileType scss setlocal suffixesadd=.scss
autocmd BufNewFile,BufRead *.styl set filetype=stylus

autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif

"https://github.com/honza/vim-snippets/issues/517
augroup markdown
  au! BufNewFile,BufRead *.md,*.markdown,*.mmd setlocal filetype=markdown
  au BufNewFile,BufRead *.md,*.markdown,*.mmd UltiSnipsAddFiletypes markdown
augroup END

"stylus file

"se deplace entre les fenetres
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

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


"https://www.youtube.com/watch?v=XA2WjJbmmoM
"search down into subfolders
"provide tab completion for all file related tasks
set path+=**
" manage by tab
nmap tt :tabedit<Space>


nnoremap Z :bp<CR>
nnoremap X :bn<CR>
nnoremap <Leader>[ :bp<CR>
nnoremap <Leader>] :bn<CR>

nnoremap - g;<CR>
nnoremap + g,<CR>

" type <Space>w to save file (lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :bd<CR>
"quit the windows no name
nnoremap <Leader>1 :q<CR> 
nnoremap <Leader>s :wq<CR>

"create the tags file (may need to install Ctags first)
command! MakeTags !ctags -R .
"Now we can:
 "use ctrl ] to jump to tag under cursor
 "use g + ctrl] for ambigus tag under cursor
 "use t] to jump back up the tag stack

"MatchTagAlways
let g:mta_use_matchparen_group = 1
let g:mta_filetypes = { 'ts' : 1, 'javascript' : 1,'html' : 1, 'xhtml' : 1, 'xml' : 1, 'jade': 1, 'pug' : 1, 'php' : 1, 'css' : 1, 'scss' : 1, 'less' : 1 }


" visual mode
nnoremap v <C-V>
nnoremap <C-V> v
nnoremap <Leader>v V
" Fix linewise visual selection of various text objects
"nnoremap VV V
"nmap Vit vitVkoj
"nmap Vat vatV
"nmap Vab vabV
"nmap VaB vaBV


" Don't move on *
" I'd use a function for this but Vim clobbers the last search when you're in
" a function so fuck it, practicality beats purity.
nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>


"folding settings
"`za` - toggles; 
"`zc` - closes; 
"`zo` - opens; 
"`zR` - open all; 
"`zM` - close all
set foldmethod=indent   "fold based on indent
"set foldmethod=manual
"set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
"set foldlevel=1         "this is just what i use
"set foldcolumn=1
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
"map <Leader>y :r! date +\%s<cr>


"indent a json file
nmap =j :%!python -m json.tool<CR>

"count the match
map <Leader>c :%s///gn<ENTER>

"Gist
"let g:gist_use_password_in_gitconfig = 1

"mardown
"let vim_markdown_preview_github=1
"let vim_markdown_preview_hotkey='<C-m>'
let g:instant_markdown_autostart = 1

"Ctrlp ignore folder
let g:ctrlp_custom_ignore = 'dist\|node_modules\|DS_Store\|git'
"let g:ctrlp_map = '<s-f>'   "use Shift + f or F open ctrlp
"let g:ctrlp_cmd = 'CtrlP'    " use Ctrlp command open ctrlp
"if you want use leader t open a new tab
"nnoremap <leader>t :tabnew<cr>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
nnoremap <leader>t :CtrlPTag<CR>


let g:vim_json_syntax_conceal = 0


"let g:github_token = 'f4c7b9e07a1b7775ba6f16f419b717317be7b3ef'

"let g:langpair="ru" 
"let g:vtranslate="T" 


" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"Plugin javascript-libraries-syntax.vim
let g:used_javascript_libs = 'jQuery,AngularJS,AngularUI,AngularUI Router,React'

" ----------------------------------------------------------------------------
" Filetypes
" ----------------------------------------------------------------------------
if has("autocmd")
  " Enable file type detection
  filetype on

  " Syntax of these languages is fussy over tabs Vs spaces
  "autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
  "autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
  "autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab

  " Customisations based on house-style (arbitrary)
  " autocmd FileType html setlocal ts=2 sts=2 sw=2 expandtab
  " autocmd FileType css setlocal ts=2 sts=2 sw=2 expandtab
  " autocmd FileType javascript setlocal ts=4 sts=4 sw=4 noexpandtab

  " Treat .rss files as XML
  autocmd BufNewFile,BufRead *.rss setfiletype xml

  "" .md files are markdown files
  "autocmd BufNewFile,BufRead *.md setlocal ft=markdown

  " .twig files use HTML syntax
  " autocmd BufNewFile,BufRead *.twig setlocal ft=html

  " .jade files use Jade syntax
  autocmd BufNewFile,BufRead *.jade setlocal ft=pug

  " .styl files use Stylus syntax
  autocmd BufNewFile,BufReadPost *.styl set filetype=stylus
  autocmd BufNewFile,BufReadPost *.css set filetype=css
  autocmd BufNewFile,BufRead *.styl set filetype=stylus
endif

"Highlights plugin, I changed the value directly in the plugin
"line 223
nnoremap <silent> <leader>2 :call InterestingWords('n')<cr>
nnoremap <silent> <leader>3 :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>
let g:interestingWordsGUIColors = ['#aeee00', '#8cffba', '#b88853 ', '#ff9eb8 ', '#ff2c4b ', '#ffa724 ']
let g:interestingWordsRandomiseColors = 1

"Plugin interestingwords
"nnoremap <silent> <leader>m :call InterestingWords('n')<cr>
"nnoremap <silent> <leader>M :call UncolorAllWords()<cr>
"nnoremap <silent> n :call WordNavigation('forward')<cr>
"nnoremap <silent> N :call WordNavigation('backward')<cr>
"let g:interestingWordsGUIColors = ['#99B3FF', '#B399FF', '#E699FF', '#FF99B3', '#99FFE6', '#FFD65C', '#99FFB3', '#E6FF99', '#FFB399', '#5CD6FF', '#99FF99', '#FFF6CC']

""""""""""""""""""""""""""""""""""""""""""""AUTOCOMPLETE Youclompleteme and UltiSnips
""neocomplete
""let g:neocomplete#enable_at_startup = 1
""
""autocomplete 
""let g:UltiSnipsExpandTrigger = "<nop>"
""inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"

""YouCompleteMe
""if you trigger ./ the file come in the menu
""Ctrl + %20 display the documention et autocompletion
""
"":h complete_ctrl-y
"let g:ycm_min_num_of_chars_for_completion = 0
"let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_autoclose_preview_window_after_completion = 1
""let g:ycm_completion_confirm_key = '<CR>'
"inoremap <expr> <Enter> pumvisible() ? "<Esc>a" : "<Enter>"
""let g:ycm_add_preview_to_completeopt = 1
""set completeopt-=preview

""nnoremap <c-I>:let g:ycm_auto_trigger=0<CR>    " turn off YCM
""nnoremap <c-i>:let g:ycm_auto_trigger=1<CR>    "turn on YCM
""invoque the completion 
"let g:ycm_key_invoke_completion = '<C-Space>'

""let g:ycm_key_list_previous_completion=["<S-tab>"]
""https://github.com/Microsoft/TypeScript/wiki/TypeScript-Editor-Support#vim 
""typescript
"if !exists("g:ycm_semantic_triggers")
"  let g:ycm_semantic_triggers = {}
"endif
"let g:ycm_semantic_triggers['typescript'] = ['.']
"  let g:ycm_filetype_blacklist = {
"        \ 'tagbar' : 1,
"        \ 'qf' : 1,
"        \ 'notes' : 1,
"        \ 'markdown' : 0,
"        \ 'unite' : 1,
"        \ 'vimwiki' : 1,
"        \ 'pandoc' : 1,
"        \ 'infolog' : 1,
"        \ 'mail' : 1
"        \}
"" If you want :UltiSnipsEdit to split your window.
"let g:UltiSnipsEditSplit="vertical"
""name a dir
"let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/snippets"
""let g:UltiSnipsSnippetDirectories=["snippets"]

"let g:UltiSnipsExpandTrigger = "<c-j>"
"let g:UltiSnipsJumpForwardTrigger = "<c-j>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-k>"


"" autocompletion by langage: <C-xo>
"set omnifunc=syntaxcomplete#Complete
"autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
""autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS

"" autocomplete Tern, work will with npm install jshint -g
"let g:tern_map_keys=1
"let g:tern_show_argument_hints="on_hold"
""http://lanyrd.com/2013/insert-mode-features-and-ternvim/schpdr/#link-rpxy
""other mapping 
"":TernDef
"":TernDocBrowse  jump to the documentation

"""""""""""""""""" end autocomplete

" OPEN BROWSER
" http://www.vim.org/scripts/script.php?script_id=3133
" Search word under cursor. 
nmap <leader>o <Plug>(openbrowser-search) 
" open link
nmap <leader>l  <Plug>(openbrowser-smart-search) 

"OPEN JAVASCRIPT DOCUMENTATION plugin investigate.vim
"nnoremap <leader>z :call investigate#Investigate('n')<CR>
"vnoremap <leader>z :call investigate#Investigate('v')<CR>
nmap <leader>`  :TernDocBrowse<CR>
"let g:investigate_url_for_js="https://developer.mozilla.org/fr/search?q="
"OPEN DOCUMENTATION plugin devdoc
nmap <leader>z <Plug>(devdocs-under-cursor)
"open documentation only with react
command! -nargs=* DevDocsReact call devdocs#open_doc(<q-args>, 'react')
command! -nargs=* DevDocsJavascript call devdocs#open_doc(<q-args>, 'javascript')
command! -nargs=* DevDocsUnderscore call devdocs#open_doc(<q-args>, 'underscore')
command! -nargs=* DevDocsSass call devdocs#open_doc(<q-args>, 'sass')
command! -nargs=* DevDocsGit call devdocs#open_doc(<q-args>, 'git')
command! -nargs=* DevDocsjQuery call devdocs#open_doc(<q-args>, 'jquery')
"command! -nargs=* DevDocsMarkdown call devdocs#open_doc(<q-args>, 'markdown')
command! -nargs=* DevDocsModernizr call devdocs#open_doc(<q-args>, 'modernizr')
command! -nargs=* DevDocsHtml call devdocs#open_doc(<q-args>, 'html')
command! -nargs=* DevDocsD3 call devdocs#open_doc(<q-args>, 'd3')

""autocomplete 
"let g:UltiSnipsExpandTrigger = "<nop>"
"inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"name a dir
let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/snippets"
"let g:UltiSnipsSnippetDirectories=["snippets"]
"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" autocompletion by langage: <C-xo>
set omnifunc=syntaxcomplete#Complete
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocomplete Tern, work will with npm install jshint -g
let g:tern_map_keys=1
let g:tern_show_argument_hints="on_hold"
au FileType javascript call JavaScriptFold()
let javascript_ignore_javaScriptdoc =1

" Next three lines are to enable C-Space to autocomplete, omnicomplete
"http://lanyrd.com/2013/insert-mode-features-and-ternvim/schpdr/#link-rpxy
inoremap <C-Space> <C-x><C-o>
imap <buffer> <Nul> <C-Space>
smap <buffer> <Nul> <C-Space> 
"other mapping 
":TernDef
":TernDocBrowse  jump to the documentation

"hardtime
let g:list_of_normal_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_visual_keys = ["h", "j", "k", "l", "-", "+", "<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
let g:list_of_insert_keys = ["<UP>", "<DOWN>", "<LEFT>", "<RIGHT>"]
"let g:list_of_disabled_keys = []
let g:hardtime_timeout = 2000 "2 sec
let g:hardtime_showmsg = 1


"Plugin 'fadein/vim-FIGlet'
let g:filgetOpts = '/Library/Fonts'

"sparkup
augroup sparkup_types
  " Remove ALL autocommands of the current group.
  autocmd!
  " Add sparkup to new filetypes
  autocmd FileType mustache,php,javascript,jsx runtime! ftplugin/html/sparkup.vim
augroup END

"remap viB and vaB 
noremap vib viB
noremap vab vaB


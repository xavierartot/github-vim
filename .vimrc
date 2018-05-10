filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'rizzatti/funcoo.vim'

"Hardtime helps you break that annoying habit vimmers have of scrolling up and down the page using jjjjj and kkkkk but
"without compromising the rest of our vim experience.
"Plugin 'takac/vim-hardtime'

Plugin 'suan/vim-instant-markdown'

Plugin 'ragtag.vim'

"CTAGS
"https://gist.github.com/nazgob/1570678
"brew install ctags
"alias ctags="`brew --prefix`/bin/ctags"
Plugin 'romainl/ctags-patterns-for-javascript'

"Plugin 'AshleyF/VimSpeak'

"highlight a word
Plugin 'vasconcelloslf/vim-interestingwords'

"ascii art
Plugin 'fadein/vim-FIGlet'

"css
Plugin 'rstacruz/vim-ultisnips-css'
Plugin 'gorodinskiy/vim-coloresque'
Plugin 'wavded/vim-stylus'

"auto complete
" Track the engine.
Plugin 'SirVer/ultisnips'
" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

"syntax

Plugin 'tmhedberg/matchit'
Plugin 'Townk/vim-autoclose'
Plugin 'tpope/vim-obsession'
"Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"html
"Plugin 'tristen/vim-sparkup'
Plugin 'mattn/emmet-vim'


"javascripts
Plugin 'marijnh/tern_for_vim'
" help for the symtax color
Plugin 'jelera/vim-javascript-syntax'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
" Plugin 'burnettk/vim-angular'
Plugin 'Valloric/MatchTagAlways'
Plugin 'HerringtonDarkholme/yats.vim'

" -------------------------------------------- REACT
" https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
" lint - https://drivy.engineering/setting-up-vim-for-react/
" install locally
" yarn add eslint babel-eslint eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-import stylelint eslint-config-airbnb eslint-plugin-jsx-a11y
" install globaly: npm i -g eslint babel-eslint eslint-plugin-react prettier eslint-config-prettier eslint-plugin-prettier eslint-plugin-import stylelint eslint-config-airbnb eslint-plugin-jsx-a11y
"//--------------------------------------------
Plugin 'mxw/vim-jsx'
Plugin 'w0rp/ale'
Plugin 'prettier/prettier'
Plugin 'skywind3000/asyncrun.vim'

" node
Plugin 'moll/vim-node'

" browser in terminal with synchronisation
Plugin 'jaxbot/browserlink.vim'

Plugin 'scrooloose/nerdtree'

"comment
Plugin 'scrooloose/nerdcommenter'

"Git
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'fugitive.vim'

"file
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'

"jade
Plugin 'digitaltoad/vim-pug'
"daltoad/vim-jade

"visual increment a column visual-increment.vim -
"use CTRL+A/X to create increasing sequence of numbers or letters via visual mode
Plugin 'triglav/vim-visual-increment'

"JSON
Plugin 'elzr/vim-json'

"write a gist file
Plugin 'mattn/webapi-vim'
Plugin 'mattn/gist-vim'

"WordPress & PHP
Plugin 'dsawardekar/wordpress.vim'
Plugin 'StanAngeloff/php.vim'

"open a word or a link in the browser
Plugin 'tyru/open-browser.vim'

"documentation
Plugin 'keith/investigate.vim'
"devdoc.io
Plugin 'rhysd/devdocs.vim'

"multi cursor
Plugin 'terryma/vim-multiple-cursors'
"Translate
"Plugin 'iadept/vim-gtranslate'

Plugin 'wellle/targets.vim'
Plugin 'wincent/terminus'
Plugin 'easymotion/vim-easymotion'
Plugin 'godlygeek/tabular'

"replace word in all project
Plugin 'dkprice/vim-easygrep'

"indent code
Plugin 'nathanaelkane/vim-indent-guides'

Plugin 'jparise/vim-graphql'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on

"CTAGS
"https://github.com/craigemery/vim-autotag
"Plugin 'craigemery/vim-autotag'
"https://github.com/ludovicchabant/vim-gutentags
"Plugin 'ludovicchabant/vim-gutentags'
"
"Arduino
"Plugin '4Evergreen4/vim-hardy'
"
"https://github.com/xavierartot/spf13-vim/blob/3.0/.vimrc
"set cursorline                  " Highlight current line
"highlight clear SignColumn      " SignColumn should match background
"highlight clear LineNr          " Current line number row will have same background color in relative mode

"The system defined color schemes are located in $VIM/colors
"to find the theme :echo $VIM in vim.
colorscheme slate
set background=dark
"plugin indent code
let g:indent_guides_enable_on_vim_startup = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
":help indent-guides

"set cursorcolumn
"set colorcolumn=121
"highlight ColorColumn ctermbg=red
"call matchadd('ColorColumn',  '\%121v', 100)
set wrap
set linebreak
"Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmodtempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At
"vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren,
"no sea takimata sanctus est Lorem ipsum dolor sit amet.

set expandtab
set tabstop=2
set smarttab
set shiftwidth=2

set autoread
set autowrite

set backupcopy=yes
set backupdir=$HOME/.vim/backup
set directory=~/.vim/backup
set noswapfile
set dir=~/.vim/tmp

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
set relativenumber
set number

set showcmd
set showmatch

"search color
set hlsearch
hi Search ctermbg=Gray
hi Search ctermfg=LightGray

set incsearch
set ignorecase
set smartcase

set laststatus=2
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
"set statusline=\%L%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \%{fugitive#statusline()}\ \ Line:\ %l

set clipboard=unnamed

"font for vim-devicons
set encoding=utf-8
"set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10
set hidden
set history=256
set matchtime=5
set modeline
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
  autocmd BufRead * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
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


" https://www.reddit.com/r/vim/comments/2t4axi/open_a_less_file_without_the_extension/
autocmd FileType less setlocal suffixesadd=.less
autocmd FileType scss setlocal suffixesadd=.scss
autocmd BufNewFile,BufRead *.styl set filetype=stylus

autocmd User Node if &filetype == "javascript" | setlocal expandtab | endif

"https://github.com/honza/vim-snippets/issues/517
"augroup markdown
  "au BufNewFile,BufRead *.md,*.markdown,*.mmd UltiSnipsAddFiletypes markdown
"augroup END

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


nnoremap <silent> * :let stay_star_view = winsaveview()<cr>*:call winrestview(stay_star_view)<cr>


"folding settings
set foldmethod=manual
set foldnestmax=10      "deepest fold is 10 levels
"set foldlevel=1         "this is just what i use
set foldcolumn=1
"set foldmethod=marker
"FOLD
set foldlevel=100
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open folds

"set foldlevelstart=0

" Space to toggle folds.
"nnoremap <Space> za
"vnoremap <Space> za

" Make zO recursively open whatever fold we're in, even if it's partially open.
"nnoremap zO zczO

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

function! MyFoldText() " {{{ abort
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
nnoremap  <Leader>c :%s///gn<ENTER>

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
"nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>m :CtrlPMRUFiles<CR>
"nnoremap <leader>t :CtrlPTag<CR>
"find a word; variables...
nnoremap <leader>l :CtrlPLine<CR>
"find a function definition
nnoremap <leader>d :CtrlPFunky<CR>
let g:ctrlp_show_hidden = 1


let g:vim_json_syntax_conceal = 0


"let g:github_token = 'f4c7b9e07a1b7775ba6f16f419b717317be7b3ef'

"let g:langpair="ru"
"let g:vtranslate="T"


" Put at the very end of your .vimrc file.

function! PhpSyntaxOverride() abort
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
let g:used_javascript_libs = 'jquery,react,flux,underscore,flux,d3'

" ----------------------------------------------------------------------------
" Filetypes
" ----------------------------------------------------------------------------
" Treat .rss files as XML
autocmd BufNewFile,BufRead *.rss setfiletype xml

"" .md files are markdown files
"autocmd BufNewFile,BufRead *.md setlocal ft=markdown

" .twig files use HTML syntax
" autocmd BufNewFile,BufRead *.twig setlocal ft=html

" .jade files use Jade syntax
autocmd BufNewFile,BufRead *.jade setlocal ft=pug

"Highlights plugin, I changed the value directly in the plugin
"line 223
nnoremap <silent> <leader>2 :call InterestingWords('n')<cr>
nnoremap <silent> <leader>3 :call UncolorAllWords()<cr>
nnoremap <silent> n :call WordNavigation('forward')<cr>
nnoremap <silent> N :call WordNavigation('backward')<cr>
let g:interestingWordsGUIColors = ['#aeee00', '#8cffba', '#b88853 ', '#ff9eb8 ', '#ff2c4b ', '#ffa724 ']
let g:interestingWordsRandomiseColors = 1


" OPEN BROWSER
" http://www.vim.org/scripts/script.php?script_id=3133
" Search word under cursor.
"nmap <leader>o <Plug>(openbrowser-search)
" open link
nmap <leader>o  <Plug>(openbrowser-smart-search)

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
let g:hardtime_timeout = 1000 "2 sec
let g:hardtime_showmsg = 1
let g:hardtime_default_on = 0


"Plugin 'fadein/vim-FIGlet'
let g:filgetOpts = '/Library/Fonts'

autocmd FileType html,css,javascript,jsx EmmetInstall
let g:user_emmet_install_global = 0
"Note that the trailing , still needs to be entered, so the new keymap would be <C-e>,.
let g:user_emmet_leader_key='<C-E>'
let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

"remap viB and vaB
noremap vib viB
noremap vab vaB

"multi cursor pluggin
"let g:multi_cursor_use_default_mapping=0
" Default mapping
let g:multi_cursor_next_key='<C-n>' "next
let g:multi_cursor_prev_key='<C-k>' "prev
let g:multi_cursor_skip_key='<C-x>' "skip
let g:multi_cursor_quit_key='<Esc>' "quit

"LINT
"React  https://jaxbot.me/articles/setting-up-vim-for-react-js-jsx-02-03-2015
let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:ale_statusline_format = ['error', 'warning %d', '']
"g:syntastic_javascript_checkers = ['eslint']
let g:ale_linters = {
\  'javascript': ['stylelint', 'eslint'],
\  'css': ['stylelint'],
\  'scss': ['stylelint'],
\}
let g:ale_sign_error = '⚠️' "Less aggressive than the default '>>'
let g:ale_sign_warning = '💡'
"let g:ale_echo_msg_warning_str = 'Warning 📣'
"let g:ale_echo_msg_error_str = '❧ Error'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
"run eslint in the backgrount with AsyncRun
autocmd BufWritePost *.js AsyncRun -post=checktime eslint --fix %
"autocmd BufWritePost *.js AsyncRun -post=checktime ./node_modules/.bin/eslint --fix %
"autocmd BufWritePost *.css AsyncRun -post=checktime stylelint --fix %
"autocmd BufWritePost *.scss AsyncRun -post=checktime stylelint --fix %
"~/node_modules/eslint/bin/eslint.js
"
let g:ale_css_stylelint_executable = 'stylelint'
let g:ale_css_stylelint_options = ''
let g:ale_css_stylelint_use_global = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign
" Set this. Airline will handle the rest.
let g:airline#extensions#ale#enabled = 1

"https://kinbiko.com/vim/my-shiniest-vim-gems/
"Highlight ugly code
"excessively long lines of code (120+ in most languages)
match ErrorMsg '\%>120v.\+'
"trailing whitespace
match ErrorMsg '\s\+$'

"Remove all trailing whitespace by pressing F6
nnoremap <F6> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"easymotion
"<Leader>f{char} to move to {char}
nmap  <Leader>e <Plug>(easymotion-bd-f)
nmap <Leader>e <Plug>(easymotion-overwin-f)
nmap F <Plug>(easymotion-prefix)s
"Tabular
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif
"https://kinbiko.com/vim/my-shiniest-vim-gems/
"backspace key are basically unused in normal mode
nnoremap <BS> {
onoremap <BS> {
vnoremap <BS> {
nnoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
onoremap <expr> <CR> empty(&buftype) ? '}' : '<CR>'
vnoremap <CR> }
"doesn't work with macro
"nnoremap q i'
"nnoremap Q i"
"onoremap ia i]
"onoremap aa a]

nnoremap <silent> <F5> :silent !open -a /Applications/Firefox.app %<CR>

"https://www.reddit.com/r/vim/comments/7yzblt/what_was_your_best_vimrc_addition/?st=JDWP6I49&sh=bdcde356
"mm make a mark called m. gg go to beginning of file. =G format from current cursor position to end of file. `m move cursor to mark named m.
"So it says "remember my current position, format the whole file, and move back to where I was".
nnoremap g= mmgg=G`m
inoremap ii <Esc>
"inoremap jj <Esc>
inoremap kj <Esc>

"https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
au BufRead,BufNewFile *.md setlocal textwidth=80

"https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
"Fast single-line indent:
nnoremap = ==
nnoremap < <<
nnoremap > >>


"https://robots.thoughtbot.com/wrap-existing-text-at-80-characters-in-vim
"Don't mash backspace when you realize you have made a typo. Just hit jj and and type it again. Never loose speed.
inoremap jj <Esc>ciw

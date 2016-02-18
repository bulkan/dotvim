set nocompatible
set shell=/bin/sh

let g:python_host_skip_check=1
let g:loaded_python3_provider=1

filetype off

call plug#begin()


" Colors
Plug 'vim-scripts/Colour-Sampler-Pack'
Plug 'tomasr/molokai'
Plug 'chriskempson/vim-tomorrow-theme'

Plug 'ervandew/supertab'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'tpope/vim-haml', {'for': 'sass'}
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'pangloss/vim-javascript'
Plug 'benekastah/neomake'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-oblique'

Plug 'godlygeek/tabular'
"Plug 'othree/javascript-libraries-syntax.vim'
Plug 'jnwhiteh/vim-golang'
Plug 'plasticboy/vim-markdown'
Plug 'fatih/vim-go'
Plug 'nsf/gocode', {'rtp': 'vim'}
Plug 'mxw/vim-jsx'
Plug 'justinmk/vim-gtfo'
Plug 'dag/vim-fish'

" Git
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv', { 'on': 'Gitv' }
if v:version >= 703
  "Plug 'mhinz/vim-signify'
  Plug 'airblade/vim-gitgutter'
endif

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" tags
"Plug 'majutsushi/tagbar'
"Plug 'ludovicchabant/vim-gutentags'


call plug#end() 

map <F2> :w<CR>
map <LEADER>w :bd!<CR>

au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.go set filetype=go

"autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
"autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0
"autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
"autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1

" ============================================================================
" SuperTab {{{
" ============================================================================

let g:SuperTabDefaultCompletionType = "context"


" }}}
" ============================================================================
" NERDTree {{{
" ============================================================================

map <C-n> :NERDTreeToggle %:p<CR>
map <LEADER>' :NERDTreeToggle ~/src<CR>


" }}}
" ============================================================================
" neomake {{{
" ============================================================================

let g:neomake_javascript_eslint = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']

autocmd! BufWritePost * Neomake


" }}}
" ============================================================================
" FZF {{{
" ============================================================================
"

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()


let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'

if has('nvim')
  let $FZF_DEFAULT_OPTS .= ' --inline-info'
endif

nnoremap <silent> <Leader><Leader> :Files ~/src<CR>

"nnoremap <silent> <expr> <Leader><Leader> (expand('%') =~ 'NERD_tree' ? "\<c-w>\<c-w>" : '').":Files\<cr>"
noremap <C-p> :ProjectFiles<CR>
noremap <C-l> :Lines<CR>
noremap <LEADER>f :Files<CR>
noremap <LEADER>p :FZF<CR>
nmap <LEADER>b :Buffers<CR>

imap <c-x><c-k> <plug>(fzf-complete-line)

"change tabs via shift-<direction>
noremap <S-l> gt
noremap <S-h> gT

" save files
nnoremap <leader>s :w<cr>
inoremap <leader>s <C-c>:w<cr>

set pastetoggle=<leader>z

map <LEADER>G :Gstatus<CR>


" }}}
" ============================================================================
" airline {{{
" ============================================================================


let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_theme='badwolf'

set ls=2





" }}}
" ============================================================================
" vim-jsz {{{
" ============================================================================
let g:jsx_ext_required = 0





filetype plugin indent on 

set hidden
set t_Co=256

"if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
"endif

set showmode

syntax on
set ai

color molokai

set cursorline
set sw=2
set tw=1000
set tabstop=4
"set smarttab
set wrapmargin=1000

set number
set showmode
set ic
set mousef
set autoread
set wildmode=list:longest
set wildmenu

set incsearch
set hlsearch

set nobackup
set noswapfile
set backspace=indent,eol,start

set expandtab

autocmd BufEnter * silent! lcd %:p:h
au BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType raml set filetype=yaml
autocmd FileType md set filetype=markdown

au CursorHold * checktime

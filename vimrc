set nocompatible
set shell=/bin/sh
"filetype plugin on

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'


Plugin 'tomasr/molokai'

"Plugin 'altercation/vim-colors-solarized'
"set background=dark
"colorscheme solarized

set hidden
set t_Co=256

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    color lucius
    "let g:solarized_termcolors=256
    "color solarized
endif

set showcmd
set showmode

syntax on
set ai


"if $TERM == "screen-bce"
    color lucius
    "let g:solarized_termcolors=256
"endif

set cursorline
set sw=4
set tw=1000
set tabstop=4
set smarttab
set expandtab
set wrapmargin=1000

set number
set showmode
set ic
set mousef
set autoread
set wildmode=list:longest
set wildmenu

map <F2> :w<CR>
map <LEADER>w :bd!<CR>
"imap <C-W> <C-o>:bwipeout!<CR>

map <M-1> :tabn 1<cr>
map <M-2> :tabn 2<cr>
map <M-3> :tabn 3<cr>
map <M-4> :tabn 4<cr>
map <M-5> :tabn 5<cr>
map <M-6> :tabn 6<cr>
map <M-7> :tabn 7<cr>
map <M-8> :tabn 8<cr>
map <M-9> :tabn 9<cr>


imap <M-1> <C-o>:tabn 1<cr>
imap <M-2> <C-o>:tabn 2<cr>
imap <M-3> <C-o>:tabn 3<cr> 
imap <M-4> <C-o>:tabn 4<cr> 
imap <M-5> <C-o>:tabn 5<cr> 
imap <M-6> <C-o>:tabn 6<cr> 
imap <M-7> <C-o>:tabn 7<cr> 
imap <M-8> <C-o>:tabn 8<cr> 
imap <M-9> <C-o>:tabn 9<cr> 

iabbrev pdb; import pdb; pdb.set_trace()
iabbrev rpdb2; import rpdb2; rpdb2.start_embedded_debugger('0000', fAllowRemote=True)

"set list
"set listchars=tab:▷⋅,trail:⋅,nbsp:⋅


set incsearch
set hlsearch

Plugin 'ScrollColors'

Plugin 'Color-Sampler-Pack'

"Plugin config

"Plugin 'SuperTab'

Plugin 'ervandew/supertab'


Plugin 'L9'
Plugin 'FuzzyFinder'
noremap <LEADER>F :FufFileWithFullCwd<CR>
noremap <LEADER>f :FufFileWithCurrentBufferDir<CR>
noremap <LEADER>b :FufBuffer<CR>
noremap <LEADER>r :FufRenewCache<CR>
noremap <LEADER>cl :FufChangeList<CR>

Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
map <LEADER>nt :NERDTreeToggle %:p<CR>
map <LEADER>' :NERDTreeToggle ~/src<CR>

Plugin 'ack.vim'

"Plugin 'mutewinter/vim-indent-guides'
"let g:indent_guides_auto_colors =  1

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-git'
Plugin 'pangloss/vim-javascript'
"Plugin "jelera/vim-javascript-syntax", {name: 'vim-js'}
Plugin 'itspriddle/vim-jquery'

Plugin 'nono/vim-handlebars'

Plugin 'digitaltoad/vim-jade'

"Plugin 'elzr/vim-json'

" for ejs support
Plugin 'briancollins/vim-jst'

au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.hdbs set filetype=handlebars
au BufRead,BufNewFile *.ejs set filetype=jst
au BufRead,BufNewFile *.jade set filetype=jade


" Python stuff
Plugin 'python.vim'

Plugin 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_mode_map = { 'mode': 'active',
                         \ 'active_filetypes': ['javascript'],}
let g:syntastic_ignore_files = ['\m\c\.html$']
let g:syntastic_enable_balloons=1

"let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_javascript_jslint_ignore_errors = ["'describe' was used before it was defined.", "'it' was used before it was defined."]
let g:syntastic_jslint_ignore_errors = ["'describe' was used before it was defined.", "'it' was used before it was defined."]

Plugin 'kien/ctrlp.vim'
"nmap <LEADER>p :CtrlP<CR>
nmap <LEADER>pg :CtrlPBufTag<CR>
nmap <LEADER>pG :CtrlPBufTagAll<CR>
nmap <LEADER>pf :CtrlPLine<CR>
nmap <LEADER>pm :CtrlPMRUFiles<CR>

" to be able to call CtrlP with default search text
"function! CtrlPWithSearchText(search_text, ctrlp_command_end)
"  execute ':CtrlP' . a:ctrlp_command_end
"  call feedkeys(a:search_text)
"endfunction

" CtrlP with default text
"nmap <LEADER>pg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
"nmap <LEADER>pG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
"nmap <LEADER>pf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
"nmap <LEADER>pe :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
"nmap <LEADER>pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
"nmap <LEADER>pm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>

" Don't change working directory
"let g:ctrlp_working_path_mode = 0

" Ignore files on fuzzy finder
let g:ctrlp_custom_ignore = {
\ 'dir':  'node_modules\|vendor\|git',
\ 'file': '\.pyc$\|\.pyo$',
\ }

let g:ctrlp_root_markers = 'src'

let g:ctrlp_working_path_mode = 'rc'

"map <leader>cclosep :CtrlP<cr>
map <LEADER>pp :CtrlP<CR>

Plugin 'kien/tabman.vim'
let g:tabman_toggle = '<leader>tt'
let g:tabman_focus  = '<leader>tf'


Plugin 'goldfeld/vim-seek'



set pastetoggle=<LEADER>pt

map <LEADER>G :Gstatus<CR>

"Plugin 'nvie/vim-flake8'
"let g:flake8_ignore = 'E501,W293'
"autocmd FileType python map <buffer> <leader>pp :call Flake8()<CR>

Plugin 'tpope/vim-fugitive'

set backspace=indent,eol,start

" Python mode (indentation, doc, refactor, lints, code checking, motion and
" " operators, highlighting, run and ipdb breakpoints)
"Plugin 'klen/python-mode'
" python-mode settings

" don't show lint result every time we save a file
"let g:pymode_lint_write = 0
" rules to ignore (example: "E501,W293")
"let g:pymode_lint_ignore = ""
" don't add extra column for error icons (on console vim creates a 2-char-wide
" extra column)
"let g:pymode_lint_signs = 0
" don't fold python code on open
"let g:pymode_folding = 0

"Plugin "Townk/vim-autoclose"
Plugin 'tpope/vim-ragtag'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'


" :Unlink    : Delete a buffer and the file on disk simultaneously.
" :Remove    : Like :Unlink, but doesn't require a neckbeard.
" :Move      : Rename a buffer and the file on disk simultaneously.
" :Chmod     : Change the permissions of the current file.
" :Find      : Run find and load the results into the quickfix list.
" :Locate    : Run locate and load the results into the quickfix list.
" :SudoWrite : Write a privileged file with sudo.
" :W         : Write every open window. Handy for kicking off tools like guard.

"Plugin "tpope/vim-eunuch"

" tab navigation
map tn :tabn<CR>
map tp :tabp<CR>
map tm :tabm 
map tt :tabnew<CR>
map <C-S-Right> :tabn<CR>
imap <C-S-Right> <ESC>:tabn<CR>
map <C-S-Left> :tabp<CR>
imap <C-S-Left> <ESC>:tabp<CR>

"Plugin 'Lokaltog/vim-powerline'
"

Plugin 'bling/vim-bufferline'


Plugin 'bling/vim-airline'

let g:airline_left_sep = '▶'
let g:airline_right_sep = '◀'
let g:airline_theme='badwolf'

let g:airline_enable_fugitive=0

"let g:airline#extensions#tabline#enabled = 1


set ls=2

Plugin 'godlygeek/tabular'

nmap <LEADER>tb :Tab /

Plugin 'othree/javascript-libraries-syntax.vim'

Plugin 'jnwhiteh/vim-golang'


autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 0
autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 1


Plugin 'rstacruz/sparkup'

Plugin 'Lokaltog/vim-easymotion'

Plugin 'wavded/vim-stylus'

Plugin 'vim-vinegar'


":LustyFilesystemExplorer 
":LustyFilesystemExplorerFromHere 
":LustyBufferExplorer 
":LustyBufferGrep (for searching through all open buffers) 

"<Leader>lf  - Opens filesystem explorer. 
"<Leader>lr  - Opens filesystem explorer at the directory of the current file. 
"<Leader>lb  - Opens buffer explorer. 
"<Leader>lg  - Opens buffer grep. 

Plugin 'sjbach/lusty'

call vundle#end()            " required
filetype plugin indent on 


autocmd BufEnter * silent! lcd %:p:h

autocmd FileType raml set filetype=yaml


autocmd FileType ruby
      \ if expand('%') =~# '_test\.rb$' |
      \   compiler rubyunit | setl makeprg=testrb\ \"%:p\" |
      \ elseif expand('%') =~# '_spec\.rb$' |
      \  compiler rspec | setl makeprg=rspec\ \"%:p\" |
      \ else |
      \  compiler ruby | setl makeprg=ruby\ -wc\ \"%:p\" |
      \ endif

filetype plugin on

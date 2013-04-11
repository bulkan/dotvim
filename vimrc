  set nocompatible

  filetype off

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " let Vundle manage Vundle
  " required! 
  Bundle 'gmarik/vundle'


  if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
      set t_Co=256
  endif

  set showcmd
  set showmode
  
  syntax on
  set ai

  "color desertEx
  color inkpot

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
  map <LEADER>c :close<CR>
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

  set list
  set listchars=tab:▷⋅,trail:⋅,nbsp:⋅


  set incsearch
  set hlsearch


  au BufRead,BufNewFile *.go set filetype=go

  "Bundle config

  Bundle 'SuperTab'

  Bundle 'sontek/rope-vim'
  let g:ropevim_vim_completion=1
  let g:ropevim_extended_complete=1

  Bundle 'L9'
  Bundle 'FuzzyFinder'
  noremap <LEADER>F :FufFileWithFullCwd<CR>
  noremap <LEADER>f :FufFileWithCurrentBufferDir<CR>
  noremap <LEADER>b :FufBuffer<CR>
  noremap <LEADER>r :FufRenewCache<CR>
  noremap <LEADER>cl :FufChangeList<CR>

  Bundle 'scrooloose/nerdcommenter'

  Bundle 'ack.vim'

  Bundle 'mutewinter/vim-indent-guides'
  let g:indent_guides_auto_colors =  1

  Bundle 'leshill/vim-json'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'tpope/vim-haml'
  Bundle 'tpope/vim-markdown'
  Bundle 'tpope/vim-git'
  Bundle 'pangloss/vim-javascript'
  Bundle 'itspriddle/vim-jquery'


  " Python stuff
  Bundle 'python.vim'

  Bundle 'vim_django'
  map <Leader>dt :VimDjangoCommandTTemplate<CR>
  map <Leader>da :VimDjangoCommandTApp<CR>

  Bundle 'django.vim'
  Bundle 'Python-Documentation'

  "Bundle 'scrooloose/syntastic'
  "let g:syntastic_mode_map = { 'mode': 'active',
                             "\ 'active_filetypes': ['ruby', 'python','cpp'],}
  "let g:syntastic_enable_balloons=1
  "let g:syntastic_quiet_warnings=1

  Bundle 'kien/ctrlp.vim'
  nmap <LEADER>g :CtrlPBufTag<CR>
  nmap <LEADER>G :CtrlPBufTagAll<CR>
  nmap <LEADER>pf :CtrlPLine<CR>
  nmap <LEADER>m :CtrlPMRUFiles<CR>
  " to be able to call CtrlP with default search text
  function! CtrlPWithSearchText(search_text, ctrlp_command_end)
      execute ':CtrlP' . a:ctrlp_command_end
      call feedkeys(a:search_text)
  endfunction
  " CtrlP with default text
  nmap <LEADER>pg :call CtrlPWithSearchText(expand('<cword>'), 'BufTag')<CR>
  nmap <LEADER>pG :call CtrlPWithSearchText(expand('<cword>'), 'BufTagAll')<CR>
  nmap <LEADER>pf :call CtrlPWithSearchText(expand('<cword>'), 'Line')<CR>
  nmap <LEADER>pe :call CtrlPWithSearchText(expand('<cword>'), '')<CR>
  nmap <LEADER>pe :call CtrlPWithSearchText(expand('<cfile>'), '')<CR>
  nmap <LEADER>pm :call CtrlPWithSearchText(expand('<cword>'), 'MRUFiles')<CR>
  " Don't change working directory
  let g:ctrlp_working_path_mode = 0
  " Ignore files on fuzzy finder
  let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](\.git|\.hg|\.svn)$',
    \ 'file': '\.pyc$\|\.pyo$',
    \ }

  let g:ctrlp_root_markers = 'env'

  Bundle 'kien/tabman.vim'
  let g:tabman_toggle = '<leader>tt'
  let g:tabman_focus  = '<leader>tf'

  "Bundle 'myusuf3/numbers.vim'

  "nnoremap <Leader>N :NumbersToggle<CR>

  Bundle 'goldfeld/vim-seek'

  Bundle 'ScrollColors'

  Bundle 'Color-Sampler-Pack'

  nnoremap set pastetoggle=<F4>

  map <LEADER>G :Gstatus<CR>

  Bundle 'nvie/vim-flake8'
  let g:flake8_ignore = 'E501,W293'
  autocmd FileType python map <buffer> <leader>pp :call Flake8()<CR>

 " Bundle 'scrooloose/nerdtree'
 " map <LEADER>t :NERDTreeToggle %:p<CR>
  Bundle 'tpope/vim-fugitive'

  set backspace=indent,eol,start

  " Python mode (indentation, doc, refactor, lints, code checking, motion and
  " " operators, highlighting, run and ipdb breakpoints)
  Bundle 'klen/python-mode'
  " python-mode settings

  " don't show lint result every time we save a file
  let g:pymode_lint_write = 0
  " rules to ignore (example: "E501,W293")
  let g:pymode_lint_ignore = ""
  " don't add extra column for error icons (on console vim creates a 2-char-wide
  " extra column)
  let g:pymode_lint_signs = 0
  " don't fold python code on open
  let g:pymode_folding = 0

  " Autoclose
  Bundle 'Townk/vim-autoclose'

  " tab navigation
  map tn :tabn<CR>
  map tp :tabp<CR>
  map tm :tabm 
  map tt :tabnew<CR>
  map <C-S-Right> :tabn<CR>
  imap <C-S-Right> <ESC>:tabn<CR>
  map <C-S-Left> :tabp<CR>
  imap <C-S-Left> <ESC>:tabp<CR>

  Bundle 'Lokaltog/vim-powerline'

  set ls=2

  "Bundle 'airblade/vim-gitgutter'

  autocmd BufEnter * silent! lcd %:p:h

  autocmd FileType ruby
          \ if expand('%') =~# '_test\.rb$' |
          \   compiler rubyunit | setl makeprg=testrb\ \"%:p\" |
          \ elseif expand('%') =~# '_spec\.rb$' |
          \  compiler rspec | setl makeprg=rspec\ \"%:p\" |
          \ else |
          \  compiler ruby | setl makeprg=ruby\ -wc\ \"%:p\" |
          \ endif

  filetype plugin on

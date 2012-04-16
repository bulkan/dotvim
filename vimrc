"get syntax highlighting
  syntax on
  set ai

" set my colorscheme to that of lilac 
  color leo
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
  set wildmenu

  map <F2> :w<CR>
  map <LEADER>w :bwipeout!<CR>
  map <LEADER>w :close<CR>
  "imap <C-W> <C-o>:bwipeout!<CR>


  "function! CleverTab()
     "if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    "return "\<Tab>"
     "else
    "return "\<C-N>"
  "endfunction
  "inoremap <Tab> <C-R>=CleverTab()<CR>



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
  "set listchars=tab:»·,trail:·

  map <LEADER>F    :FufFile<CR>
  map <LEADER>f    :FufFileWithCurrentBufferDir<CR>
  map <LEADER>b    :FufBuffer<CR>
  map <LEADER>r    :FufRenewCache<CR>


  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()

  " let Vundle manage Vundle
  " required! 
  Bundle 'gmarik/vundle'

  " My Bundles here:
  "
  " original repos on github
  Bundle 'tpope/vim-fugitive'

  "Bundle 'vim-pad'
  "let g:pad_dir = "/home/bulkan/notes"

  Bundle 'Markdown'
  Bundle 'SuperTab'


  Bundle 'L9'
  Bundle 'FuzzyFinder'
  map <LEADER>F    :FufFile<CR>
  map <LEADER>f    :FufFileWithCurrentBufferDir<CR>
  map <LEADER>b    :FufBuffer<CR>
  map <LEADER>r    :FufRenewCache<CR>
    
  Bundle 'scrooloose/nerdcommenter'

  Bundle 'scrooloose/nerdtree'
  map <LEADER>n :NERDTreeToggle %:p<CR>

  Bundle 'ack.vim'

  Bundle 'mutewinter/vim-indent-guides'
  let g:indent_guides_auto_colors =  1
  "let g:indent_guides_start_level =  2
  "let g:indent_guides_guide_size =  1

  Bundle 'leshill/vim-json'
  Bundle 'vim-ruby/vim-ruby'
  Bundle 'tpope/vim-haml'
  Bundle 'pangloss/vim-javascript'
  Bundle 'itspriddle/vim-jquery'

  "Bundle 'ShowMarks'
  Bundle 'SearchComplate'

  " Python stuff
  Bundle 'python.vim'

  Bundle 'vim_django'
  map <Leader>dt :VimDjangoCommandTTemplate<CR>
  map <Leader>da :VimDjangoCommandTApp<CR>

  Bundle 'django.vim'
  Bundle 'Python-Documentation'
  Bundle 'pyflakes.vim'


  Bundle 'kien/ctrlp.vim'

  set wildignore+=*/.git/*,*/.hg/*,*/.svn/*   " for Linux/MacOSX
  set wildignore+=.git\*,.hg\*,.svn\*         " for Windows

  "Bundle 'Gundo'
  "nnoremap <F5> :GundoToggle<CR>

  Bundle 'kien/tabman.vim'
  let g:tabman_toggle = '<leader>tt'
  let g:tabman_focus  = '<leader>tf'

  Bundle 'pep8'
  let g:pep8_map = '<leader>pp' 




  set incsearch
  set hlsearch

  filetype plugin on


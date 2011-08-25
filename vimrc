"get syntax highlighting
  syntax on
  set ai

" set my colorscheme to that of lilac 
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
  "imap <C-W> <C-o>:bwipeout!<CR>


  function! CleverTab()
     if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
    return "\<Tab>"
     else
    return "\<C-N>"
  endfunction
  inoremap <Tab> <C-R>=CleverTab()<CR>



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

  map <LEADER>n :NERDTreeToggle %:p<CR>

  set list
  set listchars=tab:»·,trail:·

  map <LEADER>F    :FufFile<CR>
  map <LEADER>f    :FufFileWithCurrentBufferDir<CR>
  map <LEADER>b    :FufBuffer<CR>
  map <LEADER>r    :FufRenewCache<CR>

  filetype plugin on

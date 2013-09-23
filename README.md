# Vim settings

These are settings for ```vim``` which I mainly use for editing python code in.  

I've installed the following plugins

1. L9, which provides some utility functions and commands for programming in Vim
1. tpope/vim-fugitive, git support
1. hallison/vim-markdown, Markdown support
1. ervandew/supertab, Tab completion
1. FuzzyFinder
1. scrooloose/nerdtree 
1. scrooloose/nerdcommenter
1. scrooloose/nerdtree, file browser support
1. kien/ctrlp.vim, opens files
1. leshill/vim-json, json support
1. vim-ruby/vim-ruby, Ruby
1. pangloss/vim-javascript, Javascript
1. itspriddle/vim-jquery, Jquery support
1. python.vim, Python
1. django.vim & django_templates.vim
1. nvie/vim-flake8, flake8 python linter

## Installation instructions

1. Backup
    You problably should back up your current settings some where and delete the current folder first, e.g.

    ```sh
    mv ~./vim ~/.vim_back_up
    ```

2. Download the code

    ```sh
    git clone git://github.com/bulkan/dotvim.git ~/.vim
    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
    ```
    
3. Optionally
   
   cd ~/.vim; sudo pip install -r requirements.txt


4. Create a symlink, if it doesn't already exist

    ```sh
    ln -s ~/.vim/vimrc ~/.vimrc
    ```

5. Install 3rd party plugins
  
   `vim +BundleInstall`

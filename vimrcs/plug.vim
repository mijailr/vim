if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'https://github.com/MarcWeber/vim-addon-mw-utils.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'https://github.com/garbas/vim-snipmate.git'
Plug 'https://github.com/honza/vim-snippets.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
Plug 'https://github.com/kana/vim-textobj-user.git'
Plug 'https://github.com/maxbrunsfeld/vim-yankstack.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/spf13/vim-autoclose.git'
Plug 'https://github.com/tek/vim-textobj-ruby.git'
Plug 'https://github.com/terryma/vim-expand-region.git'
Plug 'https://github.com/terryma/vim-multiple-cursors.git'
Plug 'https://github.com/tomtom/tlib_vim.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/vim-scripts/bufexplorer.zip'
Plug 'https://github.com/w0rp/ale.git'
Plug 'https://github.com/junegunn/fzf.vim.git'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'nightsense/carbonized'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'terryma/vim-multiple-cursors'
Plug 'matze/vim-move'
Plug 'vim-scripts/mru.vim'
Plug 'arcticicestudio/nord-vim'
call plug#end()

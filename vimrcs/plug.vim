if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/deoplete.nvim'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'arcticicestudio/nord-vim'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dracula/vim',{'as': 'dracula'}
Plug 'elixir-editors/vim-elixir'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'jacoborus/tender.vim'
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'matze/vim-move'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'mdempsky/gocode', { 'rtp': 'vim', 'do': '~/.vim/plugged/gocode/vim/symlink.sh' }
Plug 'nightsense/carbonized'
Plug 'rbgrouleff/bclose.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'scrooloose/nerdtree'
Plug 'slashmili/alchemist.vim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'spf13/vim-autoclose'
Plug 'tek/vim-textobj-ruby'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-surround'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/Conque-Shell'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/mru.vim'
Plug 'w0rp/ale'

call plug#end()

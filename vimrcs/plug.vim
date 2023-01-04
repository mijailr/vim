if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug '/usr/local/opt/fzf'
Plug 'jason0x43/vim-js-indent'
Plug 'ledger/vim-ledger'
Plug 'sheerun/vim-polyglot'
Plug 'mileszs/ack.vim'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'}
Plug 'moorereason/vim-markdownfmt'
Plug 'cespare/vim-toml'
Plug 'Yggdroot/indentLine'
Plug 'airblade/vim-gitgutter'
Plug 'alvan/vim-closetag'
Plug 'andyl/vim-textobj-elixir'
Plug 'andyl/vim-textobj-elixir'
Plug 'arcticicestudio/nord-vim'
Plug 'benmills/vimux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'dense-analysis/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'elzr/vim-json'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'ianks/vim-tsx'
Plug 'jacoborus/tender.vim'
Plug 'janko/vim-test'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/fzf.vim'
Plug 'kana/vim-textobj-function'
Plug 'kana/vim-textobj-user'
Plug 'kchmck/vim-coffee-script'
Plug 'mattn/emmet-vim'
Plug 'matze/vim-move'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'mhinz/vim-mix-format'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'pangloss/vim-javascript'
Plug 'rbgrouleff/bclose.vim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'scrooloose/vim-slumlord'
Plug 'spf13/vim-autoclose'
Plug 'svermeulen/vim-easyclip'
Plug 'tek/vim-textobj-ruby'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-ruby/vim-ruby'
Plug 'vim-scripts/Conque-Shell'
Plug 'vim-scripts/bufexplorer.zip'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/mru.vim'
Plug 'wakatime/vim-wakatime'
Plug 'wikitopian/hardmode'

call plug#end()

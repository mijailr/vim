" set nord settings
let g:nord_italic = 1
let g:nord_underline = 1
let g:nord_italic_comments = 1
let g:nord_cursor_line_number_background = 1
let g:lightline = { 'colorscheme': 'onehalfdark' }
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
" enable nord"
" colorscheme nord

colorscheme onehalfdark
" Enable deoplete
let g:deoplete#enable_at_startup = 1
let g:alchemist#elixir_erlang_src = "/usr/local/share/src"
let g:ConqueTerm_CloseOnEnd = 1
set number relativenumber
set colorcolumn=80
set laststatus=2
syntax on
set cursorline
set noshowmode
set expandtab
set shiftwidth=2
set softtabstop=2

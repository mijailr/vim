" set nord settings
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

let g:airline#extensions#ale#enabled = 1
let g:airline_theme='onehalfdark'
let g:airline_powerline_fonts = 1
colorscheme onehalfdark
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|^.git$\|_site'

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

let g:mix_format_on_save = 1

" Setting for LC

" set hidden

" let g:LanguageClient_serverCommands = {
"   \ 'elixir': ['elixir-ls'],
"   \ }
" nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>

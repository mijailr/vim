" set nord settings
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

nnoremap <esc><esc> :noh<return>

let g:EditorConfig_exclude_patterns = ['fugitive://.\*']

let g:ale_set_loclist = 0
let g:mix_format_silent_errors = 1
let g:airline#extensions#ale#enabled = 1
" let g:ale_linters = {'go': ['gometalinter', 'gofmt']}
let g:airline_theme='onehalfdark'
let g:airline_powerline_fonts = 1
colorscheme onehalfdark
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|^.git$\|_site'
let g:ale_fixers = { 'java': ['google_java_format']}
let g:ale_java_checkstyle_config = '~/Documents/Java/checkstyle.xml'
let g:ale_java_checkstyle_options = '-c ~/java/checkstyle.xml'
let g:ale_set_balloons = 1

nnoremap <space> /
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
" Enable deoplete
" let g:deoplete#enable_at_startup = 1

let g:ConqueTerm_CloseOnEnd = 1
set number relativenumber
set clipboard=unnamedplus
set colorcolumn=80
set cursorline
set noshowmode
set expandtab
set shiftwidth=2
set softtabstop=2
set laststatus=2
syntax on

let g:mix_format_elixir_bin_path = '~/.asdf/installs/elixir/1.10.2/bin/'
let g:mix_format_on_save = 1

let g:vim_json_syntax_conceal = 0
let s:user_dir = expand('~/.vim')

let g:coc_snippet_next = '<tab>'
let g:airline#extensions#coc#enabled = 1

let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml'

set cmdheight=1
set updatetime=300
set shortmess+=c
set signcolumn=yes

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for format selected region
augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

let test#java#runner = 'gradletest'

autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Golang settings
autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_functions = 1

let g:markdownfmt_autosave=0
let g:indentLine_concealcursor = "nv"
let g:ackprg = 'ag --nogroup --nocolor --column'

command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case -- '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>, fzf#vim#with_preview(), <bang>0)


set  runtimepath+=/usr/local/opt/fzf

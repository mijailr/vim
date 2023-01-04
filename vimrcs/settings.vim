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
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1
colorscheme onedark
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

"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

set  runtimepath+=/usr/local/opt/fzf

let g:snipMate = { 'snippet_version' : 1 }

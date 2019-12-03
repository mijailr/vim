let mapleader = ','

map <leader>o :BufExplorer<cr>

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
nmap <leader>qa :qa<cr>
nmap <leader>wq :wq<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-f> :FZF<CR>
map <leader>j :FZF<CR>
map <leader>f :MRU<CR>

map <leader>bd :Bclose<cr>
"
map <leader>ba :1,1000 bd!<cr>

" Write files as sudo
command! W w !sudo tee "%" > /dev/null

" Vim fugitive maping
nmap <leader>gb :Gblame<cr> 
nmap <leader>gw :Gwrite<cr>
nmap <leader>gp :Gpull<cr>
nmap <leader>gP :Gpush<cr>
nmap <leader>gs :Gstatus<cr>
nmap <leader>gd :Gvdiff<cr>
nmap <leader>gc :Gcommit<cr>

" vv to generate new vertical split
nnoremap <silent> vv <C-w>v
""let g:coc_node_args = ['--nolazy', '--inspect-brk=6045']
" Run commands
map <leader>vz :VimuxZoomRunner<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>


" Use gd to go to definition
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
" Map to format
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)
" Using CocList
" Show all diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Use K to show_documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

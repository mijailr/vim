let mapleader = ','

map <leader>o :BufExplorer<cr>

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

nmap <leader>w :w!<cr>
nmap <leader>q :q<cr>
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
map <leader>vz :VimuxZoomRunner<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>


" Use gd to go to definition
nmap <silent> gd <Plug>(coc-definition)

" Use K to show_documentation
nnoremap <silent> K :call <SID>show_documentation()<CR>

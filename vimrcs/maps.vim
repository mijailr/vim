let mapleader = ','

map <leader>o :BufExplorer<cr>

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark 
map <leader>nf :NERDTreeFind<cr>

nmap <leader>w :w!<cr>

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

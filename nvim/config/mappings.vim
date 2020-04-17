let mapleader = '\'

map <silent> z1 :set foldlevel=1<CR>
map <silent> z2 :set foldlevel=2<CR>
map <silent> z3 :set foldlevel=3<CR>
map <silent> z0 :set foldlevel=0<CR>

map <silent> <leader>2 :set ts=2<cr>:set sts=2<cr>:set sw=2<cr>

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" toggle spelling check
nnoremap <silent> <leader>s :set spell!<CR>

" undo the highlight for the current highlighted text
nnoremap <silent> <leader>a :noh<CR>

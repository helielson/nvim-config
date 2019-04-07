source ~/.config/nvim/functions

" tab space
set tabstop=2
set shiftwidth=2
set softtabstop=2

set nowrap
set expandtab                                                " expand tabs to spaces
set clipboard+=unnamedplus

" search sets
set ignorecase                                               " case-insensitive search
set smartcase                                                " case-sensitive search if any caps
set smartindent

set list                                                     " show trailing whitespace
set number                                                   " show line numbers
set ruler                                                    " show where you are
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc,*.pyc,*.bak,*.swp,*.class
set wildmode=longest,list,full

set diffopt=vertical

" key binding
let mapleader = '\'

" folding
set foldtext=CustomFoldText()
set foldmethod=indent        " faster than syntax
set foldlevelstart=1              " start unfolded
set foldlevel=1

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

" python config
let g:python_host_prog = '/usr/local/bin/python'

" removes the scrollbars
set guioptions-=r
set guioptions-=L

" increase height of focused screen part
set winheight=5
set winminheight=5
set winheight=9999

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

colorscheme oneblue

"""""""""""""""""""" PLUGINS CONFIGURATION """"""""""""""""""""""""""

" ctrlp
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0   " ag is fast enough that CtrlP doesn't need to cache
let g:ackprg = 'ag --vimgrep --smart-case'
let g:ctrlp_match_window = 'order:ttb,max:20'
let g:ctrlp_working_path_mode = 'a'

" ack
cnoreabbrev Ack Ack!
cnoreabbrev Gst Gstatus<CR><c-w>J<CR>
cnoreabbrev Gstat Gstatus<CR><c-w>J<CR>
cnoreabbrev Gstatus Gstatus<CR><c-w>J<CR>

" zoomwin
map <silent> <leader>z :ZoomWin<CR>

" ycmcompleter
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
"
" make YCM compatible with UltiSnips
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']

let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')

let g:ale_sign_column_always = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_linters = {
\ 'typescript': ['tslint', 'tsserver'],
\ 'javascript': ['eslint', 'flow', 'prettier'],
\ 'python': ['pylint'],
\ 'go': ['gometalinter']
\}

let g:flow#enable = 0

" Fugitive
nnoremap <leader>d :Gdiff<CR>                                " open git diff
nnoremap <leader>w ]c                                        " next diff in the diff tool
nnoremap <leader>e [c                                        " previous diff in the diff tool
nnoremap <leader>q :diffput<CR>                              " puts the diff to the anoter window
nnoremap <leader>r :diffget<CR>                              " get the diff from another window

" UltiSnips
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]
let g:UltiSnipsSnippetsDir = '~/.config/nvim/my-snippets'

autocmd FileType javascript UltiSnipsAddFiletypes javascript-jasmine-arrow
autocmd FileType javascript UltiSnipsAddFiletypes javascript-react-flow
autocmd FileType javascript UltiSnipsAddFiletypes javascript-react-native

" vim-better-whitespace
let g:strip_whitespace_on_save = 1

" tmux
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-w>h :TmuxNavigateLeft<cr>
nnoremap <silent> <c-w>j :TmuxNavigateDown<cr>
nnoremap <silent> <c-w>k :TmuxNavigateUp<cr>
nnoremap <silent> <c-w>l :TmuxNavigateRight<cr>
nnoremap <silent> <c-w>\ :TmuxNavigatePrevious<cr>
nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

" emmet
let g:user_emmet_leader_key='<c-s>'

" vim-commentary
autocmd FileType javascript setlocal commentstring=//\ %s
autocmd FileType go setlocal commentstring=//\ %s
autocmd FileType vim setlocal commentstring=\"\ %s
autocmd FileType yaml setlocal commentstring=\#\ %s

" NeoBundle init
set runtimepath+=~/.config/nvim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.config/nvim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Plugins
NeoBundle 'christoomey/vim-tmux-navigator'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'drn/zoomwin-vim'
NeoBundle 'fatih/vim-go'
NeoBundle 'helielson/vim-fugitive'
NeoBundle 'honza/vim-snippets'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mileszs/ack.vim'
NeoBundle 'prettier/vim-prettier', {
        \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql'] }
NeoBundle 'ntpeters/vim-better-whitespace'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'tmux-plugins/vim-tmux-focus-events'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'w0rp/ale'
NeoBundle 'ervandew/supertab' "order matters. So this plugin should be executed in the end
NeoBundle 'leafgarland/typescript-vim'

call neobundle#end()

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

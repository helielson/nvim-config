"{{{ encoding
scriptencoding utf-8
language en_US.UTF-8
set encoding=utf-8
set termencoding=utf-8
"}}}

"{{{ shell
set t_Co=256
"}}}

"{{{ performance
set ttyfast
set lazyredraw
set synmaxcol=128
set re=1
syntax sync minlines=256
"}}}

"{{{ interface
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nowrap
set expandtab                   " expand tabs to spaces
set number                      " show line numbers
set ruler                       " show where you are
set list                        " show trailing whitespace
set pumheight=15                " Limit completion menu height
"}}}

"{{{ clipboard
set clipboard+=unnamedplus
let g:clipboard = {
  \ 'name': 'pbcopy',
  \ 'copy': {
  \    '+': 'pbcopy',
  \    '*': 'pbcopy',
  \  },
  \ 'paste': {
  \    '+': 'pbpaste',
  \    '*': 'pbpaste',
  \ },
  \ 'cache_enabled': 0,
  \ }
"}}}

"{{{ bin hosts
let g:python_host_prog = '/usr/bin/python'
"}}}

"{{{ folding
set foldtext=CustomFoldText()
set foldmethod=indent           " faster than syntax
set foldlevelstart=1            " start unfolded
set foldlevel=1
"}}}

"{{{ search
set ignorecase                  " case-insensitive search
set smartcase                   " case-sensitive search if any caps
"}}}

"{{{ identations
set autoindent
set smartindent
set cindent
"}}}

"{{{ ignore files
set wildignorecase
set wildignore+=*.swp,*.pyc,*.bak,*.class,*.orig
set wildignore+=.git,.hg,.bzr,.svn,*.db,*.sqlite
set wildignore+=*.o,*.obj,*.rbc,__pycache__,.DS_Store
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg,*.svg,*.log
set wildignore+=build/*,*/tmp/*,vendor/cache/*,bin/*
set wildignore+=.sass-cache/*,log/**,node_modules/**,target/**,.vscode/**,.history/**
set wildignore+=build,vendor,.sass-cache,log,node_modules,target,.vscode,.history
"set wildmode=longest,list,full
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
"}}}

"{{{ diff
set diffopt=vertical
"}}}

"{{{ turn off sound
set visualbell
set t_vb=
"}}}

"{{{ window resize
set winheight=5
set winminheight=5
set winheight=9999

autocmd VimResized * :wincmd = " automatically rebalance windows on vim resize
"}}}

"{{{
set winheight=5
set winminheight=5
autocmd WinEnter * wincmd _
"}}}

"{{{ cursor
if g:settings.enable_cursorline == 1
  set cursorline
endif
if g:settings.hiddenfileinfo == 1
  set shortmess=filnxtToO
endif
"}}}

"{{{ theme
if g:settings.enable_colorscheme == 1
  syntax on
  try
    exec 'colorscheme ' . g:settings.colorscheme
    if g:settings.background != ''
      exec 'set background='.g:settings.background
    endif
  catch
  endtry
  hi Normal guibg=NONE ctermbg=NONE
else
  syntax off
endif
"}}}

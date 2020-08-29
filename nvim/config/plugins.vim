" Init plug plugin

autocmd VimEnter *
  \  if !empty(filter(copy(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

"{{{ shortcuts
fu! s:is_group_enabled(group)
  return zvim#util#enabled_group(a:group)
endf

fu! s:configure(plugin_name)
  exec "call zvim#util#source_rc('plugins/" . a:plugin_name . ".vim')"
endf
"}}}

call zvim#plug#ensure_installation()
call plug#begin(g:settings.plugin_manager_dir)

if s:is_group_enabled('core') "{{{
  Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
        \| call s:configure('coc.nvim')
  Plug 'christoomey/vim-tmux-navigator'
        \| call s:configure('vim-tmux-navigator')
  Plug 'ctrlpvim/ctrlp.vim'
        \| call s:configure('ctrlp.vim')
  Plug 'drn/zoomwin-vim'
        \| call s:configure('zoomwin-vim')
  Plug 'mileszs/ack.vim'
        \| call s:configure('ack.vim')
  Plug 'helielson/vim-fugitive'
        \| call s:configure('vim-fugitive')
  Plug 'tmux-plugins/vim-tmux-focus-events'
  Plug 'tpope/vim-commentary'
  Plug 'ntpeters/vim-better-whitespace'
        \| call s:configure('vim-better-whitespace')
  Plug 'mattn/emmet-vim'
        \| call s:configure('emmet-vim')
endif "}}}

if s:is_group_enabled('linter') "{{{
  Plug 'neoclide/coc-prettier', {'do': 'yarn install --frozen-lockfile'}
        \| call s:configure('coc-prettier')
  Plug 'w0rp/ale'
        \| call s:configure('ale')
  Plug 'editorconfig/editorconfig-vim'
        \| call s:configure('editorconfig-vim')
endif "}}}

if s:is_group_enabled('syntax') "{{{
  Plug 'fatih/vim-go'
  Plug 'leafgarland/typescript-vim'
  Plug 'dart-lang/dart-vim-plugin'
  Plug 'iamcco/coc-flutter', {'do': 'yarn install --frozen-lockfile'}
  Plug 'neoclide/coc-json'
  Plug 'udalov/kotlin-vim'
  Plug 'sheerun/vim-polyglot'
endif "}}}

if s:is_group_enabled('appearance') "{{{
  Plug 'vim-airline/vim-airline'
endif "}}}

if s:is_group_enabled('snippets') "{{{
  Plug 'honza/vim-snippets'
endif "}}}

call plug#end()

" Plug 'Valloric/YouCompleteMe'

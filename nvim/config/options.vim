"{{{ Enable nocompatible
if has('vim_starting') && &compatible
  set nocompatible
endif
"}}}

" Public Settings {{{
let g:settings = {}
let g:settings.enabled_plugins = 1
let g:settings.enable_colorscheme = 1
let g:settings.colorscheme = 'pb'
let g:settings.background = ''
let g:settings.enable_cursorline = 0
let g:settings.hiddenfileinfo = 0
" }}}

" Private Settings {{{
let g:_vim_plug_installed = 0
" }}}

"{{{ plugin groups
let g:settings.plugin_groups = []
let g:settings.plugin_manager_dir = '~/.cache/vim-plug/'
let g:settings.plugin_manager_init_file_path = g:settings.plugin_manager_dir . 'autoload/plug.vim'

call add(g:settings.plugin_groups, 'core')
call add(g:settings.plugin_groups, 'linter')
call add(g:settings.plugin_groups, 'syntax')
call add(g:settings.plugin_groups, 'appearance')
call add(g:settings.plugin_groups, 'snippets')
"}}}


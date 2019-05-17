let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit = 'horizontal'
let g:UltiSnipsSnippetDirectories=["UltiSnips", "my-snippets"]
let g:UltiSnipsSnippetsDir = '~/.config/nvim/my-snippets'

autocmd FileType javascript UltiSnipsAddFiletypes javascript-jasmine-arrow
autocmd FileType javascript UltiSnipsAddFiletypes javascript-react-flow
autocmd FileType javascript UltiSnipsAddFiletypes javascript-react-native

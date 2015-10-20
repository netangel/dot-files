colorscheme badwolf	    " color scheme from .vim/colors 
syntax enable		    " enable syntax processing
filetype indent on      " load filetype-specific indent files
set encoding=utf-8

" Visual prettiness
set tabstop=4		    " spaces per <TAB>
set softtabstop=4	    " spaces for TAB when editing
set expandtab           " tabs are spaces
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()}]

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" Search with The Silver Searcher (ag)
set runtimepath^=~/.vim/bundle/ag
" open ag.vim
nnoremap <leader>a :Ag

" CmdP configuration
set runtimepath^=~/.vim/bundle/ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" Handling plugins
execute pathogen#infect()

" Git commit enhancement
autocmd Filetype gitcommit setlocal spell textwidth=72

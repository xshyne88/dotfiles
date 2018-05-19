" syntax highlighting
syntax on
set nocompatible

" line numbers
set number
" auto read when a file is changed from outside
set autoread

" fast terminal for smoother redrawing
set ttyfast

" turn off bells, change to screen flash
set visualbell

" highlight position of cursor
" show location of cursor using a horizontal line
set cursorline
set cursorcolumn

" indentation options
" auto indenting
" set autoindent
" smart indenting
set smartindent
"" set cindent
" activates indenting for files
"" filetype indent on
" 1 tab == 2 spaces
""set shiftwidth=2
""set tabstop=2
""set expandtab
set expandtab
set shiftwidth=2
set softtabstop=2

" tab and shift tab behavior, indent and dedent
" for command mode
nnoremap <Tab> >>
nnoremap <S-Tab> <<
" for insert mode
inoremap <S-Tab> <C-d>
" for visual mode
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" get rid of anoying ~file
set nobackup

" turn off swap files
set noswapfile

" dark background
set background=dark

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" go gofmt golint gometalinter govet
let g:syntastic_go_checkers = ['go']

" go-vim
let g:go_fmt_command = "goimports"

let g:syntastic_javascript_checkers = ['eslint']
let g:javascript_plugin_flow = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" colorscheme perun
" pathogen
execute pathogen#infect()


" This is the configuration file for my "settings"
" The .vimrc is for functionality, while this is for
" things that I feel like are more optional


"REMAPS
" Remaps the semicolon to the colon
    nnoremap ; :
" Sets the standard procedure for yanking
    nnoremap Y y$
"

"LINE NUMBERS
    au InsertEnter * :set nu
    au InsertLeave * :set rnu
    set rnu

"TABS
    set softtabstop=4
    set tabstop=4
    set shiftwidth=4
    set expandtab
    filetype plugin indent on

"SPELLING
    set spell spelllang=en_us
    autocmd BufRead,BufNewFile *.* setlocal nospell

"NERD TREE
  autocmd vimenter * if !argc() | NERDTree | endif
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  let NERDTreeIgnore = ['\.pyc$']

"POWERLINE
    let g:Powerline_symbols = 'fancy'
    set encoding=utf-8
    set laststatus=2

"SNIPMATE
    filetype plugin on

"SUPERTAB
    let g:SuperTabDefaultCompletionType = "context"

"SOLARIZED
    let g:solarized_termcolors=256

    autocmd BufRead,BufNewFile *.* syntax enable
    autocmd BufRead,BufNewFile *.* set background=dark
    autocmd BufRead,BufNewFile *.* colorscheme solarized

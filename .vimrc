set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()


Bundle 'gmarik/vundle'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'TyOverby/Aztec-vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'
Bundle 'fholgado/minibufexpl.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'sukima/xmledit'
Bundle 'derekwyatt/vim-scala'
Bundle 'vim-scripts/Align'

Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on



set backspace=indent,eol,start
set autoindent
set textwidth=0
set nobackup

set ruler
set number
set spell spelllang=en_us

set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

set showcmd
set showmatch
set ignorecase
set incsearch
set autowrite
set background=dark
colo solarized


function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line('.')
  let c = col('.')
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction


if has("autocmd")
 " Enabled file type detection
 " Use the default filetype settings. If you also want to load indent files
 " to automatically do language-dependent indenting add 'indent' as well.
 filetype plugin on
 autocmd BufWritePre * call <SID>StripTrailingWhitespaces()

endif " has ("autocmd")


so ~/.vim/settings.vim

set ttimeout
set ttimeoutlen=0

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'Lokaltog/vim-powerline'
Bundle 'Raimondi/delimitMate'
Bundle 'altercation/vim-colors-solarized'
Bundle 'ervandew/supertab'
Bundle 'kien/ctrlp.vim'
Bundle 'majutsushi/tagbar'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdcommenter.git'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
Bundle 'Rip-Rip/clang_complete'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'int3/vim-extradite'

" vim-scripts repos
Bundle 'Pydiction'

" non github repos
" ...

filetype plugin indent on     " required!

" ---------- Some plugin config stuff ---------------

" Enable powerline
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 10
"let g:Powerline_symbols = 'fancy'

" Fix powerline slow mode switch issue
if (!has('gui_running'))
    set ttimeoutlen=0
endif

" Enable solarized if running gvim, otherwise use wombat"
set background=dark
if (has('gui_running'))
    colorscheme solarized
else
    colorscheme solarized
    "se t_Co=256
    "let g:solarized_termcolors=256
endif
syntax enable

"let g:solarized_termcolors=256

" Let SuperTab do code completion based on OmniComplete
let g:SuperTabDefaultCompletionType = "context"

" Auto quit NERDTree if it's the only buffer left {{{
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
    if exists("t:NERDTreeBufName")
        if bufwinnr(t:NERDTreeBufName) != -1
            if winnr("$") == 1
                q
            endif
        endif
    endif
endfunction
"}}}

" Indentation guidlines
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 4

" Extradite split size
let g:extradite_width = 84

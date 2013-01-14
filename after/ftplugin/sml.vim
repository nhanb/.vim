source $VIMRUNTIME/sml/vim61/common.vim
set nowrap
set et
set ts=4
set sw=4
set autoindent
set textwidth=76
set sft
set ignorecase
set autoindent
filetype indent on

""inoremap ( ()<ESC>i
""inoremap { {}<ESC>i
""inoremap [ []<ESC>i
""inoremap " ""<ESC>i
source $VIMRUNTIME/sml/vim61/matchit.vim

if has("gui_running")
	colors darkblue
endif



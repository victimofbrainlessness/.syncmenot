" Turn off compatibility mode
set nocompatible


" Init pathogen
runtime plugins/pathogen/autoload/pathogen.vim
call pathogen#infect('plugins')



" NERDTree auto commands
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <F3> :NERDTreeToggle<CR>

" Filetype
filetype plugin on
syntax enable
set hidden
set background=dark
set number
set fdm=syntax

" Taglist config
let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

au BufNewFile,BufRead *.ctp set filetype=php
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

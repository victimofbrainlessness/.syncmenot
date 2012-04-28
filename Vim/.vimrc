" Turn off compatibility mode
set nocompatible


" Init pathogen
runtime plugins/pathogen/autoload/pathogen.vim
call pathogen#infect('plugins')



" NERDTree auto commands
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

filetype plugin on
syntax enable
set hidden
set background=dark
set number
set fdm=syntax


au BufNewFile,BufRead *.ctp set filetype=php
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

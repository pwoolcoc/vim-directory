call pathogen#runtime_append_all_bundles()
set nocompatible

set number
set expandtab
set ts=4
set shiftwidth=4
set colorcolumn=80

let mapleader=","
let g:mapleader=","

nnoremap ; :
nnoremap <leader>w :w!<CR>
nnoremap <leader><space> :noh<CR>
nnoremap <leader>n :bn<CR>
nnoremap <leader>q :bd<CR>

inoremap jj <ESC>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>


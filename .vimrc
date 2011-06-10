call pathogen#runtime_append_all_bundles()

set nocompatible

set number
set ruler
syntax on

set encoding=utf-8

set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

set hlsearch
set incsearch
set ignorecase
set smartcase

set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

set laststatus=2

let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
map <Leader>n :NERDTreeToggle<CR>

map <Leader>t :!ctags --extra=+f -R *<CR><CR>
map <C-\> :tnext<CR>

if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

function s:setupWrapping()
  set wrap
  set wrapmargin=2
  set textwidth=72
endfunction

function s:setupMarkup()
  call s:setupWrapping()
  map <buffer> <Leader>p :Hammer<CR>
endfunction

au FileType make set noexpandtab
au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn} call s:setupMarkup()

au BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewfile *.txt call s:setupWrapping()

au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79

set backspace=indent,eol,start

filetype plugin indent on

map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

map <Leader>te :tabe <C-R>=expand("%:p:h") . "/" <CR>

cmap <C-P> <C-R>=expand("%:p:h") . "/" <CR>

nmap <C-Up> [e
nmap <C-Down> ]e
vmap <C-Up> [egv
vmap <C-Down> ]egv

let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1


if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
endif
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1

set modeline
set modelines=10

color desert

set backupdir=~/.vim/backup
set directory=~/.vim/backup

set showcmd

if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif


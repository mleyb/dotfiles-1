call pathogen#infect()
syntax on
filetype plugin indent on
Helptags

" Various settings
set nocompatible
set number ruler
set wrap linebreak nolist
set nobackup noswapfile nowb
set history=2000
set smartindent tabstop=4 shiftwidth=4 expandtab tw=78 fo-=t
set laststatus=2
set showcmd
set hidden autoread
set magic
set mat=2
set background=dark

set wildignore=*.swp,*.bak,*.pyc

" Search stuff
set incsearch ignorecase smartcase showmatch hlsearch

" Remove all highlighting
nnoremap <space> :noh<cr>:echo<cr><esc>

" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Save with sudo
command W :execute ':silent w !sudo tee % > /dev/null' | :edit!
command Wq :execute ':silent w !sudo tee % > /dev/null' | :quit!

" This shall be used further on
let mapleader = ","
let g:mapleader = ","

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_user_command = 'find %s -type f'
let g:tagbar_autoclose = 1
let g:tagbar_compact = 1

let g:syntastic_mode_map = { 'mode': 'passive' }

nnoremap <leader>N :NERDTree<cr>
nnoremap <leader>v :vsp 
nnoremap <leader>s :sp 

nnoremap <leader>t :tabn<cr>
nnoremap <leader>e :Errors<cr>
nnoremap <leader>n :lnext<cr>

nnoremap <leader>a :wa<cr>
nnoremap <leader>w :w<cr>
nnoremap <leader>q :wq<cr>
nnoremap <leader>Q :qa!<cr>

" ex command for toggling hex mode - define mapping if desired
command -bar Hexmode call ToggleHex()

" helper function to toggle hex mode
function ToggleHex()
  let l:modified=&mod
  let l:oldreadonly=&readonly
  let &readonly=0
  let l:oldmodifiable=&modifiable
  let &modifiable=1
  if !exists("b:editHex") || !b:editHex
    let b:oldft=&ft
    let b:oldbin=&bin
    setlocal binary
    let &ft="xxd"
    let b:editHex=1
    %!xxd
  else
    let &ft=b:oldft
    if !b:oldbin
      setlocal nobinary
    endif
    let b:editHex=0
    %!xxd -r
  endif
  let &mod=l:modified
  let &readonly=l:oldreadonly
  let &modifiable=l:oldmodifiable
endfunction

nnoremap <leader>H :Hexmode<CR>

" Split window shortcuts
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l
nnoremap <C-h> <C-W>h
nnoremap <F9> 3<C-W><
nnoremap <F10> 3<C-W>+
nnoremap <F11> 3<C-W>-
nnoremap <F12> 3<C-W>>
inoremap <C-j> <C-O><C-W>j
inoremap <C-k> <C-O><C-W>k
inoremap <C-l> <C-O><C-W>l
inoremap <C-h> <C-O><C-W>h
inoremap <F9> 3<C-O><C-W><
inoremap <F10> 3<C-O><C-W>+
inoremap <F11> 3<C-O><C-W>-
inoremap <F12> 3<C-O><C-W>>

au BufRead mutt-* set fo+=t tw=72
au BufRead mutt-* g/^> [> ]*-- *$/,?^-- $?-2d
au BufRead mutt-* 0
au BufReadCmd *.odt,*.ott,*.ods,*.ots,*.odp,*.otp,*.odg,*.otg call zip#Browse(expand("<amatch>"))

inoremap jj <esc>
set backspace=eol,start,indent

" Copy/pasting via xsel
noremap <leader>y :silent :w !xsel -bi<cr>
noremap <leader>Y :silent :w !xsel -pi<cr>
noremap <leader>p o<esc>:set paste<cr>:.!xsel -bo<cr>:set nopaste<cr>
noremap <leader>P o<esc>:set paste<cr>:.!xsel -po<cr>:set nopaste<cr>

ab dm Daniel Martí
ab mv@ mvdan@mvdan.cc
ab rg Regards
ab ch Cheers
ab tht Thank you for your time

".vimrc file by Rodrigo Alvarez Echarri
" January 2014
" Slides: TODO

" ================================================
" Note to myself:
" DO NOT USE <C-z> FOR SAVING IF PRESENTING
" ================================================

"Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %

"Better copy & paste
set pastetoggle=<F2>
set clipboard=unnamed

"Mouse and backspace
set mouse=a "on OSX press ALT and click
set bs=2    "make backspace behave like normal again

"Rebind <Leader> key
let mapleader = ","

"Bind nohl
"Removes highlight of your last search
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>

"Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>





"Unmap the arrow keys 
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

syntax enable
colorscheme inkpot

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

"Show whitespace
" MUST be inserted BEFORE the colorscheme command
"autocmd Colorscheme * highlight ExtraWhitespace cetermbg=red guibg=red
"au InsertLeave * match ExtraWhitespace /\s\+$/

"El TEMA, el que me gusta es inkpot (just in case)
"Color Scheme

syntax enable
colorscheme inkpot

"Enable syntax highlighting 
"need to reload this file for the change to apply
filetype off
filetype plugin indent on
syntax on

"Quick quit command 

noremap <Leader>e :quit<CR> "quit current window
noremap <Leader>E :qa!<CR>  "Quit all windows

"Bind Ctrl+<movement> keys to move around the windows, instead of using Ctrl+w +<movement>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

"Easier moving between tabs
" ======================================================================================
"     Note to myself:
"                     find other key this is note usefull even thoug with tmux not used.
" ======================================================================================
"map <Leader>n <esc>:tabprevious<CR>
"map <Leader>m <esc>:tabnext<CR>


"Map sort function to a key
vnoremap <Leader>s :sort<CR>

"Easier moving of code block
vnoremap < <gv  "better indentacion
inoremap < <gv  "better indentacion

"Showing line numbers and lenght
set number "show line numbers
set tw=79  "width of the document
set nowrap "don't automatically wrap on load
set fo-=t  "don't automatically wrap text when typing
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Useful settings
set history=700
set undolevels=700


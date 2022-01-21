"┌─────────────────┐
"│----Vim Plug-----│
"└─────────────────┘

call plug#begin('~/.vim/plugged')
 
Plug 'vim-airline/vim-airline'

call plug#end()

"┌─────────────────┐
"│-----General-----│
"└─────────────────┘

" Set the mouse usable.  
set mouse=a 

" Break lines without breaking words.
set wrap linebreak nolist

" Set tabs to 4 spaces.
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

" Set sidebar number count.
set number 

" Set enconding.
set encoding=utf-8

" File will scroll down 8 lines above the screen end.
set scrolloff=8
set hidden

" Colorscheme.
set termguicolors
syntax on
let g:airline_theme = 'material'

" Change background color (only works without termguicolors).
"hi Normal ctermbg=NONE

"┌─────────────────┐
"│----Terminal-----│
"└─────────────────┘

" Call OpenTerminal function with F2.
nnoremap <F2> :call OpenTerminal()<CR>

" Open terminal function.
function! OpenTerminal() 
    set splitright 
    set splitbelow
    split term://zsh
    resize 6
endfunction

" Start terminal in insert mode.
au BufEnter * if &buftype == 'terminal' | startinsert | endif

" Use Esc to exit insert mode.
tnoremap <Esc> <C-\><C-n>

" Enter insert mode when clicking on the terminal.
if has('nvim')
    augroup terminal_setup | au!
        autocmd TermOpen * nnoremap <buffer><LeftRelease> <LeftRelease>i
        " more stuff
    augroup end
endif

"┌─────────────────┐
"│--File-Explorer--│
"└─────────────────┘

" Use Vexplore as tree-view for easier navigation
nnoremap <F3> :Vexplore<CR><F3>

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 20

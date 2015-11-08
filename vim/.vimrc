filetype off
execute pathogen#infect()
execute pathogen#helptags()

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic/'

call plug#end()

filetype plugin indent on
syntax on

"Colors
colorscheme desert
set background=light
set number
set mouse=a

"NERDtree settings
"Start NERDtree automatically
"autocmd vimenter * NERDTree

"Start NERDtree when vim has no file specifed
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Makes vim close if NERDtree is the only pane open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Hotkeys
"map <C-n> :NERDTreeToggle<CR>
nnoremap <silent> <F9> :TagbarToggle<CR>


"Misc
"Allow saving files when I stupidly forgot to start vim with sudo
cmap w!! w !sudo tee > /dev/null %
"Spellcheck
nn <f7> :setlocal spell! spelllang=en_us<CR>
imap <f7> <C-o>:setlocal spell! spelllang=en_us<CR>

"Fix vim colors in tmux
set t_Co=256

"Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1

"Pymode

"tabs and spaces
set tabstop=2 noexpandtab
set tabstop=4 expandtab

"stop up down left right habit
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>


"Syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" When saving, make :W work like :w
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

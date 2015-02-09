filetype off
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

colorscheme desert
set background=light
set number
set mouse=a

"NERDtree settings
"Start NERDtree automatically
"autocmd vimenter * NERDTree

"Start NERDtree when vim has no file specifed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Makes vim close if NERDtree is the only pane open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Hotkeys
map <C-n> :NERDTreeToggle<CR>
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

"Pymode
let g:pymode = 1
let g:pymode_python = 'python'

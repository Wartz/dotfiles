execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

colorscheme gruvbox
set bg=dark
set number
set mouse=a

"NERDtree settings
"Start NERDtree automatically
autocmd vimenter * NERDTree

"Start NERDtree when vim has no file specifed
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Makes vim close if NERDtree is the only pane open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Hotkeys
map <C-n> :NERDTreeToggle<CR>

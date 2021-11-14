set number
set autoindent
set showmatch
set expandtab
set shiftwidth=4
set softtabstop=4
set tw=79
set dictionary+=/usr/share/dict/words
set t_Cs= " undercurl fix
syntax enable

autocmd BufNewFile,BufRead *.json set shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.yaml set shiftwidth=2 softtabstop=2
autocmd BufNewFile,BufRead *.Makefile set shiftwidth=8 softtabstop=0 noexpandtab
autocmd BufNewFile,BufRead *.md,rst,txt set spell spelllang=en_us

" -- colors --
set bg=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox
"colorscheme molokai

" -- vim-plug --
call plug#begin('~/.vim/plugged')
Plug 'w0rp/ale'
Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

" -- linters --
let b:ale_fixers = {'python': ['black', 'isort'], 'javascript': ['prettier', 'eslint'], 'typescript': ['prettier', 'eslint']}

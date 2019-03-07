" Pathogen
"execute pathogen#infect()
syntax on
filetype plugin indent on

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Ansible highlight syntax
Plug 'pearofducks/ansible-vim'

" NerdTree
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }

" Gitstatus Nerdtree
Plug 'Xuyuanp/nerdtree-git-plugin'

" Terraform
Plug 'hashivim/vim-terraform'

" Nginx syntax
Plug 'chr4/nginx.vim'

" Initialize plugin system\
call plug#end()

" Nerdtree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd vimenter * NERDTree
let g:NERDTreeNodeDelimiter = "\u00a0"
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" FZF remap
nnoremap <C-p> :Files<Cr>

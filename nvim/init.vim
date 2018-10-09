call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'w0rp/ale'
Plug 'morhetz/gruvbox'
call plug#end()

" set colorscheme
set background=dark
colorscheme gruvbox 

" default encoding
set encoding=UTF-8

" show line number
set number

" set default tab to 2 spaces
set shiftwidth=2
set expandtab

" hide default mode display in status as it is already showing in lightline
set noshowmode

" enable mouse select mode
set mouse+=a

" auto show NERDTree when vim is called without file
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" auto close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" fzf config
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_command_prefix = 'Fzf'

" shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-t> :tabnew<CR>
map <C-p> :FzfRg<CR>
map <C-o> :FzfFiles<CR>

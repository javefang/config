call plug#begin()
"Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'airblade/vim-gitgutter'
call plug#end()

" config
set encoding=UTF-8
set laststatus=2
set list
set shiftwidth=2
set expandtab

" auto show NERDTree when vim is called without file
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" auto close vim if NERDTree is the only window open
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" set 256 terminal color
if !has('gui_running')
  set t_Co=256
endif

" Fzf customisations
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_command_prefix = 'Fzf'

" shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-l> :tabn<CR>
map <C-h> :tabp<CR>
map <C-t> :tabnew<CR>
map <C-p> :FzfRg<CR>
map <C-o> :FzfFiles<CR>

call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'w0rp/ale'
Plug 'valloric/youcompleteme'
Plug 'raimondi/delimitmate'
Plug 'yggdroot/indentline'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jamessan/vim-gnupg'
call plug#end()

" neovim provider
let g:python_host_prog='/usr/bin/python'
let g:python3_host_prog='/usr/local/bin/python3'
let g:loaded_ruby_provider = 1

" set colorscheme
set background=dark
colorscheme gruvbox 

" keep background transparent
hi Normal guibg=NONE ctermbg=NONE

" default encoding
set encoding=UTF-8

" show line number
set number

" always show sign column
set signcolumn=yes

" set default tab to 2 spaces
set shiftwidth=2
set expandtab

" hide default mode display in status as it is already showing in lightline
set noshowmode

" make gitgutter update more promptly
set updatetime=100

" make clipboard work
set clipboard=unnamed

" auto show NERDTree when vim is called without file
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" auto close vim if NERDTree is the only window open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" fzf config
let g:fzf_layout = { 'down': '~30%' }
let g:fzf_command_prefix = 'Fzf'
command! -bang -nargs=* FzfAg call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

" youcompleteme
set completeopt-=preview
let g:ycm_server_python_interpreter = '/usr/local/bin/python3'

" ale disable highlight
let g:ale_set_highlights = 0

" indentline disable conceal quotes in JSON files
let g:indentLine_setConceal = 0

" shortcuts
map <C-n> :NERDTreeToggle<CR>
map <C-t> :tabnew<CR>
map <C-p> :FzfAg<CR>
map <C-f> :FzfFiles<CR>
map <C-j> :FzfBLines<CR>
nnoremap gd :YcmCompleter GoToDefinition<CR>
nnoremap gnt :tabn<CR>
nnoremap gpt :tabp<CR>

" Ctrl + hjkl to move between panes
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>

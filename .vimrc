set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'dracula/vim'
Plugin 'Chiel92/vim-autoformat'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" tab navigation like firefox
set pastetoggle=<F2>
set nu
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
colo dracula
nnoremap <C-S-h> :tabprevious<CR>
nnoremap <C-S-l>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-h> <Esc>:tabprevious<CR>i
inoremap <C-S-l>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>
map <C-n> :NERDTreeToggle<CR>
map <C-f> :NERDTreeFocus<CR>
map <C-c> "+y<CR>
map <S-F9> :YcmCompleter GoToDeclaration<CR>
map <S-F10> :YcmCompleter GoToDefinition<CR>
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber


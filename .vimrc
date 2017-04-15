set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
set laststatus=2


Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_cpp_compiler="g++"
"let g:syntastic_cpp_compiler_options="-std=c++11 -stdlib=libc++"
let g:syntastic_cpp_compiler_options="-std=c++11"

Plugin 'Chiel92/vim-autoformat'
noremap <F3> :Autoformat

Plugin 'scrooloose/nerdtree'
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " close when only tree window is open

" Auto-close parentheses
"Plugin 'townk/vim-autoclose'
Plugin 'raimondi/delimitmate'

Plugin 'rip-rip/clang_complete'
 " path to directory where library can be found
let g:clang_library_path='/usr/lib/llvm-3.8/lib'

Plugin 'ervandew/supertab'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'c.vim'
filetype plugin on

Plugin 'a.vim'

Plugin 'airblade/vim-gitgutter'

"Plugin 'jordwalke/flatlandia'
Plugin 'wombat256.vim'

Plugin 'scrooloose/nerdcommenter'

Plugin 'bronson/vim-trailing-whitespace'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" Put your non-Plugin stuff after this line


filetype indent on
colo wombat256mod
"nnoremap <esc> :noh<return><esc> " breaks arrow keys
set hlsearch
set cul
set enc=utf-8
set wildmenu            " visual autocomplete for command menu"
inoremap jk <ESC>
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set number



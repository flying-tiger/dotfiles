"--------------------------------------------------------------------
" Basic Configurations 
"--------------------------------------------------------------------
syntax enable
set clipboard=unnamed
set autoindent
set smartindent
set viminfo='100,h,n~/.vim/viminfo

"--------------------------------------------------------------------
" Install Plugin Manger
"--------------------------------------------------------------------
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fsLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

"--------------------------------------------------------------------
" Plugin Configurations
"--------------------------------------------------------------------
call plug#begin('~/.vim/plugged')
    Plug 'altercation/vim-colors-solarized'
    Plug 'scrooloose/nerdtree'
    Plug 'tpope/vim-fugitive'
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()

"--------------------------------------------------------------------
" Appearance
"--------------------------------------------------------------------
if has("gui_running")
    set background=dark
    colorscheme solarized
endif


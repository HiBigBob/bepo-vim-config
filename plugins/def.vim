" Start plugins definition
call plug#begin($HOME.'/.vim/plugins/plugged')

Plug 'scrooloose/nerdtree'
Plug 'goatslacker/mango.vim'
Plug 'bling/vim-airline', { 'do' : $HOME.'/.vim/fonts/install' }
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
"Plug 'bronson/vim-trailing-whitespace'
Plug 'scrooloose/syntastic'
Plug 'junegunn/vim-easy-align'
Plug 'terryma/vim-multiple-cursors'
Plug 'maksimr/vim-jsbeautify', { 'do' : 'git submodule update --init --recursive' }
"Plug 'maxbrunsfeld/vim-yankstack'
Plug 'tpope/vim-surround'
Plug 'elzr/vim-json'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'cakebaker/scss-syntax.vim'
Plug 'othree/html5.vim'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py --clang-completer' }
Plug 'Shougo/neocomplete.vim',
Plug 'Shougo/neosnippet.vim',
" Plug 'Shougo/neosnippet-snippets',
Plug 'marijnh/tern_for_vim', { 'do' : 'npm install' }
Plug 'moll/vim-node'
Plug 'syngan/vim-vimlint'
Plug 'ynkdir/vim-vimlparser'
Plug 'kshenoy/vim-signature'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'sjl/gundo.vim'
Plug 'morhetz/gruvbox'
"Plug 'clones/vim-fuzzyfinder'
Plug 'vim-scripts/L9'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'evidens/vim-twig'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tacahiroy/ctrlp-funky'
Plug 'rking/ag.vim'
Plug 'sgur/ctrlp-extensions.vim'
" Plug 'SirVer/ultisnips'
" Plug 'ervandew/supertab'
Plug 'edkolev/tmuxline.vim'
Plug 'edkolev/promptline.vim'
" Plug 'christoome/vim-tmux-navigator'
"Plug 'itchyny/lightline.vim', { 'do' : $HOME.'/.vim/fonts/install' }
Plug 'tomtom/tcomment_vim'
Plug 'altercation/vim-colors-solarized'
Plug 'shougo/unite.vim'
Plug 'shawncplus/phpcomplete.vim'

call plug#end()

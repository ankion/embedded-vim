" http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
echo "Installing Vundle.."
echo ""
silent !mkdir -p ~/.vim/bundle
silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
let iCanHazVundle=0
endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"Add your bundles here

" Search file
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'

" Autocomplete
Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/Align'
Bundle 'Raimondi/delimitMate'
Bundle 'tpope/vim-repeat'
Bundle 'kaochenlong/snipmate.vim'

" UI
Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'vim-scripts/matchit.zip'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Lokaltog/vim-easymotion'

" tags, ctags
Bundle 'vim-scripts/taglist.vim'
Bundle 'tpope/vim-ragtag'
Bundle 'simplyzhao/cscope_maps.vim'
Bundle 'vim-scripts/autotags'
"Bundle 'wesleyche/SrcExpl'
"Bundle 'wesleyche/Trinity'

"Javascript
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'

if iCanHazVundle == 0
  echo "Installing Bundles, please ignore key map error messages"
  echo ""
  :BundleInstall
endif
" Setting up Vundle - the vim plugin bundler end

" Note: Skip initialization for vim-tiny or vim-small.
if !1 | finish | endif

if has('vim_starting')
  if &compatible
    set nocompatible
  endif

  " Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" github
NeoBundle 'thinca/vim-fontzoom'
NeoBundle 'thinca/vim-ref'
NeoBundle 'thinca/vim-quickrun'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'pekepeke/ref-javadoc'
NeoBundle 'rodjek/vim-puppet'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'Shougo/neomru.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle "Shougo/neosnippet-snippets"
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'szw/vim-tags'
NeoBundle 'honza/vim-snippets'
NeoBundle 'rking/ag.vim'
NeoBundle 'evidens/vim-twig'
NeoBundle 'tomtom/tcomment_vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'kana/vim-submode'
NeoBundle 'tpope/vim-fugitive'

" vim.org
NeoBundle 'buftabs'
NeoBundle 'bufexplorer.zip'
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'matchit.zip'

NeoBundle 'Shougo/vimproc', {
    \ 'build' : {
    \   'windows' : 'make -f make_mingw32.mak',
    \   'cygwin' : 'make -f make_cygwin.mak',
    \   'mac' : 'make -f make_mac.mak',
    \   'unix' : 'make -f make_unix.mak',
    \   },
    \ }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

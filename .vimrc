colorscheme myfavorite

scriptencoding utf-8
syntax on
set autoindent
set autoread
" set clipboard=autoselect
set clipboard=unnamed
set cmdheight=2
set complete=.,w,b,u,t,i,d
set cursorline
set define="^\s*#define|^\sconst"
set expandtab
set encoding=utf-8
set fileencodings=utf-8,cp932,euc-jp
set formatoptions=q
set grepformat=%f:%l:%m,%f:%l%m,%f\ \ %l%m,%f
"set grepprg=grep\ -rnIH\ --exclude-dir=.svn\ --exclude=tags
set grepprg=ag\ --nogroup\ -iS
set guioptions=a
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set nolinebreak
set nobackup
set nocompatible
set nofoldenable
set noundofile
set nowrap
set number
set shiftwidth=4
set showmatch
set shortmess+=I
set smartcase
set smartindent
set smarttab
set statusline+=%=%r\|\ %{&ff}\ \|\ %{&fenc}\ \|\ %Y\ \|\ %c\ \|\ %l/%L\ 
set tabstop=4
set tagbsearch
set textwidth=0
set wildmenu
if has('path_extra')
  set tags+=tags;/Users/a13374/Developments
endif

let mapleader = ","
let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
let g:netrw_liststyle = 3
let g:quickrun_config = {
  \ '_': {
  \ 'split': 'vertical',
  \ 'outputter/buffer/split': 'botright 15sp',
  \ 'hook/time/enable': 1,
  \ }
  \ }
let phtml_sql_query = 1

" Move splitted window
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-h> <C-w>h

" Clear search hilight
nnoremap <silent> <C-l><C-l> :nohlsearch<CR>

" Insert indent
nnoremap <silent> <Tab> <S-v>>gv<ESC>
nnoremap <silent> <S-Tab> <S-v><gv<ESC>
vnoremap <silent> <Tab> >gv
vnoremap <silent> > >gv
vnoremap <silent> <S-Tab> <gv
vnoremap <silent> < <gv

" Insert close brackets
"inoremap { {}<LEFT>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>
"inoremap {} {}<LEFT>
"inoremap [] []<LEFT>
"inoremap () ()<LEFT>
"inoremap "" ""<LEFT>
"inoremap '' ''<LEFT>

"nnoremap <silent> <C-g> :grep <cword> **/*<CR>
autocmd QuickFixCmdPost grep,vimgrep copen
"autocmd FileType php :set tags+=$HOME/.vim/tags/pear.tags
autocmd BufNewFile,BufRead *.volt,*.phtml set filetype=htmldjango

cd ~/Developments/

source ~/.vim/lightline.vimrc
source ~/.vim/neobundle.vimrc
source ~/.vim/neocomplcache.vimrc
source ~/.vim/neosnippet.vimrc
source ~/.vim/ref.vimrc
"source ~/.vim/submode.vimrc
"source ~/.vim/syntastic.vimrc
"source ~/.vim/unite.vimrc

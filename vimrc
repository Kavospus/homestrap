if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$VIM_DIR/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('$VIM_DIR/dein')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')
call dein#add('Shougo/neocomplete.vim')
call dein#add('hail2u/vim-css3-syntax')
call dein#add('jpo/vim-railscasts-theme')
call dein#add('ctrlpvim/ctrlp.vim')
call dein#add('nono/vim-handlebars')
call dein#add('tomtom/tcomment_vim')
call dein#add('bling/vim-airline')
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#fnamemod = ':t'
call dein#add('chriskempson/base16-vim')
call dein#add('dandorman/vim-colors')
call dein#add('roman/golden-ratio')
call dein#add('MarcWeber/vim-addon-mw-utils')
call dein#add('tomtom/tlib_vim')
call dein#add('ajh17/VimCompletesMe')
call dein#add('janko-m/vim-test')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('rust-lang/rust.vim')
call dein#add('ntpeters/vim-better-whitespace')

" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

set number " line numbering
set t_Co=256 " Force 256 colors
set t_ut=
syntax enable

set cul
set cuc
" :highlight ExtraWhitespace ctermbg=red guibg=red
augroup syntaxgroup
  autocmd!
  autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
  autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/
augroup END

map <Space> :bnext<cr>
map <Left>  :echo "no!"<cr>
map <Right> :echo "no!"<cr>
map <Up>    :echo "no!"<cr>
map <Down>  :echo "no!"<cr>
" map m "+y
"nnoremap <C-y> "+y
"vnoremap <C-y> "+y
"nnoremap <C-p> "+gP
"vnoremap <C-p> "+gP
set clipboard=unnamedplus
nnoremap ; :
vnoremap ; :
" nnoremap <cr> :nohlsearch<cr>

nnoremap J mzJ`z
set showcmd
set encoding=utf-8
set scrolloff=3
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set hlsearch
set incsearch
set ignorecase
set smartcase
set background=dark
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

nmap :E :Explore
augroup filegroup
  autocmd Filetype html setlocal ts=2 sw=2 expandtab
  autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
  autocmd Filetype typescript setlocal ts=4 sw=4 expandtab
  autocmd Filetype python setlocal ts=4 sw=4 expandtab
  autocmd Filetype c setlocal ts=4 sw=4 expandtab
  autocmd Filetype cpp setlocal ts=8 sw=4 smarttab softtabstop=0 expandtab
augroup END

" colorscheme railscasts
colorscheme molokai

noswapfile

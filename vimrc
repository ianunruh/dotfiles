set nocompatible
set noswapfile

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"
" Bundles
"
Bundle 'gmarik/vundle'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-endwise'
Bundle 'chriskempson/base16-vim'
Bundle 'scrooloose/nerdtree'
" Languages
Bundle 'hail2u/vim-css3-syntax'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'tpope/vim-markdown'
Bundle 'rodjek/vim-puppet'
Bundle 'thoughtbot/vim-rspec'
Bundle 'vim-ruby/vim-ruby'

"
" Tabs
"
set smartindent
set tabstop=2 shiftwidth=2 expandtab

"
" User interface
"
set background=dark
colorscheme base16-default
set mouse=a
set number
set nowrap

autocmd vimenter * if !argc() | NERDTree | endif

" Show tabs and trailing whitespace visually
if (&termencoding == "utf-8") || has("gui_running")
  if v:version >= 700
    set list listchars=tab:»·,trail:·,extends:…,nbsp:‗
  else
    set list listchars=tab:»·,trail:·,extends:…
  endif
else
  if v:version >= 700
    set list listchars=tab:>-,trail:.,extends:>,nbsp:_
  else
    set list listchars=tab:>-,trail:.,extends:>
  endif
endif

"
" Keyboard shortcuts
"
set pastetoggle=<c-p>

map <C-n> :NERDTreeToggle<CR>

" Remove any trailing whitespace
autocmd BufWritePre *.{rb,md,markdown,html,css,scss,less} :%s/\s\+$//e

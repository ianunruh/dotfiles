set nocompatible
set noswapfile

filetype off
filetype plugin indent on

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"
" Bundles
"
Bundle 'altercation/vim-colors-solarized'
Bundle 'chriskempson/base16-vim'
Bundle 'gmarik/vundle'
Bundle 'rodjek/vim-puppet'
Bundle 'scrooloose/nerdtree'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-sensible'
Bundle 'vim-ruby/vim-ruby'

"
" File types
"
autocmd BufNewFile,BufRead *.{md,mkd,mkdn,kdown,mark*} set ft=markdown
autocmd BufNewFile,BufRead Modulefile set ft=ruby
autocmd BufNewFile,BufRead Guardfile set ft=ruby
autocmd BufNewFile,BufRead *.pp set ft=puppet
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead *.{conf,cfg} set ft=dosini
autocmd BufNewFile,BufRead Vagrantfile set ft=ruby
autocmd BufNewFile,BufRead *.jbuilder set ft=ruby

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
set nowrap
set number

autocmd vimenter * if !argc() | NERDTree | endif

" Show tabs and trailing whitespace visually
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
autocmd BufWritePre *.rb :%s/\s\+$//e

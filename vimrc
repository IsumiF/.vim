syntax on
filetype plugin indent on

if has('win32') || has('win64')
  let $VIMHOME = $VIM."/vimfiles"
else
  let $VIMHOME = $HOME."/.vim"
endif

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install() }}
Plug 'neovimhaskell/haskell-vim'
Plug 'alx741/vim-stylishask'
Plug 'scrooloose/nerdtree'
Plug 'qpkorr/vim-bufkill'
Plug 'ap/vim-buftabline'

call plug#end()

set softtabstop=2
set tabstop=2
set expandtab
set autoindent shiftwidth=2
set nu
set mouse=a
set backspace=indent,eol,start
set signcolumn=yes
set incsearch
set ruler
set showcmd
set completeopt=menuone,preview,noinsert,noselect

highlight ColorColumn ctermbg=gray
set colorcolumn=81
set textwidth=80

let g:netrw_banner = 0
let g:netrw_browse_split = 2

let NERDTreeShowHidden = 1
map <C-\> :NERDTreeToggle<CR>

" disable automatic indentation of 'haskell-vim'
let g:haskell_indent_disable = 1

let g:stylishask_on_save = 1

inoremap <silent><expr> <c-space> coc#refresh()
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

set exrc secure

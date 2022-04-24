let mapleader = "\<Space>"

set enc=utf-8
scriptencoding utf-8

set backupdir=./.bkp,$HOME/tmp/vim
set directory=./.bkp,$HOME/tmp/vim
set undodir=./.bkp,$HOME/tmp/vim

set nocompatible

if getcwd() == "C:\\Windows\\system32"
	cd $USERPROFILE
endif

set path+=**
set wildmenu wildmode=list:full
set wildcharm=<C-z>

set list
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:»,precedes:«

syntax enable
colorscheme codedark

set guifont=Iosevka_Term:h14
let g:neovide_refresh_rate=144
let g:neovide_cursor_vfx_mode = "wireframe"

set number

" Switches to relative numbering in normal mode and absolute in insert mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" Key mappings

" <leader><leader> switch between buffers
nnoremap <leader><leader> <C-^>
" <leader>; shows a menu for buffers
nnoremap <leader>; :buffer <C-z>
" <leader>g stats
nnoremap <leader>q g<c-g>
" <leader>t stats
nnoremap <leader>t :help digraph-table<CR>

set tabstop=4
set shiftwidth=4

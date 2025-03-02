let mapleader = "\<Space>"

set enc=utf-8
scriptencoding utf-8

set backupdir=./.bkp,$HOME/tmp/vim
set directory=./.bkp,$HOME/tmp/vim
set undodir=./.bkp,$HOME/tmp/vim

set undofile

set nocompatible

if getcwd() ==? "C:\\Windows\\system32"
    cd $USERPROFILE
endif

set path+=**
set wildmenu wildmode=list:full
set wildcharm=<C-z>

set list
set showbreak=↪\ 
set listchars=tab:→\ ,eol:↲,nbsp:␣,trail:•,extends:»,precedes:«
set linebreak

syntax enable
colorscheme codedark

let s:hostname = substitute(system('hostname'), '[[:cntrl:]]', '', 'g')

if s:hostname ==? "SpaceCadet"
    set guifont=Iosevka_Term:h12
else
    set guifont=Iosevka_Term:h14
endif

let g:rainbow_ctermfgs = [
            \ 'brown',
            "\ 'Darkblue',
            "\ 'darkgray',
            \ 'darkgreen',
            \ 'darkcyan',
            \ 'darkred',
            \ 'darkmagenta',
            \ 'brown',
            \ 'gray',
            "\ 'black',
            \ 'darkmagenta',
            "\ 'Darkblue',
            \ 'darkgreen',
            \ 'darkcyan',
            \ 'darkred',
            \ 'red',
            \ ]

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
" <leader>q stats
nnoremap <leader>q g<c-g>
" <leader>t show searchable digraph table 
nnoremap <leader>t :help digraph-table<CR>
nnoremap <leader><Tab> :set expandtab<bar>:retab<bar>:set noexpandtab<CR>

set tabstop=4
set shiftwidth=4

if has('nvim')
    packadd nvim-lsp-installer
    packadd nvim-lspconfig
    lua require("nvim-lsp-installer").setup {}

    packadd cmp-buffer
    packadd cmp-nvim-lsp
    packadd cmp-path
    packadd cmp-vsnip
    packadd haskell-tools.nvim
    packadd nvim-cmp
    packadd nvim-treesitter
    packadd plenary.nvim
    packadd popup.nvim
    packadd rust.vim
    packadd rustaceanvim
    packadd telescope.nvim
    packadd vim-surround
    packadd vim-vsnip

    packadd cmp-helper
    set omnifunc=v:lua.vim.lsp.omnifunc
    set signcolumn=yes
    lua vim.keymap.set('n', '<leader>sf', vim.lsp.buf.format, opts)

    lua vim.g.haskell_tools = { hls = { settings = { haskell = { cabalFormattingProvider = 'cabal-fmt' } } } }


    let g:haskell_indent_disable=1

    if exists("g:neovide")
        let g:neovide_confirm_quit=1
        let g:neovide_cursor_vfx_mode = "pixiedust"
        let g:neovide_cursor_vfx_mode = "wireframe"
        let g:neovide_cursor_vfx_particle_density=14
        let g:neovide_refresh_rate=144
        let g:neovide_remember_window_position=v:false
        let g:neovide_window_floating_opacity=0.8
        let g:rainbow_active=1
    endif
endif

" Custom digraphs
digr NN 8469 " Blackboard N
digr RR 8477 " Blackboard R
digr ZZ 8484 " Blackboard Z
digr -r 8866 " Right tack
digr -l 8867 " Left tack
digr T- 8868 " Down tack
digr -0 8888 " Multimap

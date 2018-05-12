set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdTree'

Plugin 'fatih/vim-go'

Plugin 'nsf/gocode', {'rtp': 'vim/'}

Plugin 'junegunn/seoul256.vim'

Plugin 'valloric/youcompleteme'

Plugin 'scrooloose/nerdcommenter'

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'mileszs/ack.vim'

Plugin 'vimwiki/vimwiki'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-syntastic/syntastic'

Plugin 'tpope/vim-surround.git'

Plugin 'leafgarland/typescript-vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Colour
set t_Co=256
let g:seoul256_srgb = 1
colo seoul256

" Tabbing and indenting
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set smartindent

autocmd FileType ruby setlocal expandtab shiftwidth=2 tabstop=2 sts=2
autocmd FileType eruby setlocal expandtab shiftwidth=2 tabstop=2 sts=2
autocmd FileType css setlocal expandtab shiftwidth=2 tabstop=2 sts=2
autocmd FileType scss setlocal expandtab shiftwidth=2 tabstop=2 sts=2
autocmd FileType html setlocal expandtab shiftwidth=2 tabstop=2 sts=2
autocmd FileType xml setlocal expandtab shiftwidth=2 tabstop=2 sts=2
autocmd FileType typescript setlocal expandtab shiftwidth=2 tabstop=2 sts=2

" Common settings
set hlsearch
set number
syntax on
hi Normal ctermbg=none

" Useful shortcuts
let mapleader=","
set pastetoggle=<leader>p
imap jk <Esc>
nnoremap <silent> <leader>n :nohlsearch<CR>

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_python_binary_path = '/usr/bin/python3'

" Vim Airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'
let g:airline_left_sep=''
let g:airline_right_sep=''

" Better WhiteSpace
highlight ExtraWhitespace ctermbg=114
map <leader>sw :StripWhitespace<CR>

" Nerdcommenter
let NERDSpaceDelims=1

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" VimWiki
let g:vimwiki_list = [{'path': '$HOME/Dropbox/Notes'}]
autocmd FileType vimwiki nmap <leader>h :Vimwiki2HTML<CR>
autocmd FileType vimwiki nmap <leader>ha :VimwikiAll2HTML<CR>
autocmd FileType vimwiki nmap <leader>t :VimwikiTable<CR>

" Golang
let g:go_fmt_command = "goimports"
let g:go_auto_sameids = 1
autocmd FileType go nmap <leader>b <Plug>(go-build)
autocmd FileType go nmap <Leader>i <Plug>(go-info)
autocmd FileType go nmap <Leader>r <Plug>(go-run)

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_check_on_open = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_ruby_checkers = ['rubocop']

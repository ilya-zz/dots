set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
set path+=**

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-unimpaired'
Plugin 'fatih/molokai'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'mattn/emmet-vim'
Plugin 'honza/vim-snippets'
Plugin 'easymotion/vim-easymotion'
Plugin 'elzr/vim-json'
Plugin 'pangloss/vim-javascript'
Plugin 'diepm/vim-rest-console'
Plugin 'L9'
Bundle 'uarun/vim-protobuf'
Bundle 'jewes/Conque-Shell'
Bundle 'rust-lang/rust.vim'
Bundle 'gyim/vim-boxdraw'
call vundle#end()

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
let g:UltiSnipsJumpForwardTrigger="<c-z>"




au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>i <Plug>(go-info)

au FileType go nmap <leader>r :w<cr> :GoRun<cr>
au FileType go nmap <leader>R <Plug>(go-rename)
au FileType go nmap <leader>A :w<cr> :GoAlternate!<cr>
au FileType go nmap <leader>F :w<cr> :GoFillStruct<cr>
au FileType go nmap <leader>TT :w<cr> :GoAddTags<cr>
au FileType go nmap <leader>RT :w<cr> :GoRemoveTags<cr>
au FileType go nmap <leader>d <Plug>(go-doc <cword>)
au FileType go nmap <leader>g <Plug>(go-def)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)
au FileType go nmap <leader>v <Plug>(go-vet)
au FileType go nmap <leader>l <Plug>(go-metalinter)

au FileType go nmap <Leader>ds <Plug>(go-def-split)
au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
au FileType go nmap <Leader>dt <Plug>(go-def-tab)

au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

au FileType go nmap <C-N> :lnext<CR>
au FileType go nmap <C-M> :lprev<CR>


au FileType go nmap <C-n> :cnext<CR>
au FileType go nmap <C-m> :cprev<CR>

au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
"au FileType go nmap <Leader>C :colorscheme molokai<CR>
"
au FileType rust nmap <Leader>r :RustRun<cr>

au BufNewFile,BufReadPost *.md set filetype=markdown

au WinLeave * set nocursorline
au WinEnter * set cursorline

au FileType c nmap <Leader>r :mak run<CR>
au FileType make nmap <Leader>r :mak run<CR>


let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_list_type="quickfix"

let g:go_metalinter_autosave = 1"
let g:go_metalinter_command = "gometalinter.v2 ./..."
let g:go_metalinter_enabled = ['vet', 'golint', 'deadcode', 'errcheck']
"
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
au FileType jsx,tsx,tmpl,html,css EmmetInstall

" vim airline status line settings
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_warning = 0
let g:airline_section_c = '%t'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
" configure the formatting of filenames (see |filename-modifiers|)
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_buffers = 1
" tab_nr_type 0 is for #splits and >0 for tab-number
let g:airline#extensions#tabline#tab_nr_type = 0
" so ask for tab number but then specify that you don't want it :)
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#fnamemod = ':.'
let g:airline#extensions#tabline#fnamecollapse = 0
" don't want a function name at expense of a git branch or filename
let g:airline#extensions#tagbar#enabled = 0


filetype plugin indent on

set number
set autoindent
set hlsearch
set autowrite
set cursorline
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set undofile
set undodir=~/.vim/undodir

set ttyfast
set lazyredraw

set gdefault "global replace by default

set ignorecase
set smartcase

set showtabline=2
set virtualedit+=all

syntax on
syntax enable

let mapleader = " "
let maplocalleader = "  "

nnoremap <leader>a :cclose<CR>

nnoremap <leader>T :TagbarToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>D :bd<CR>
nnoremap <leader>M :make<CR>
nnoremap <leader>GG :Ag 

nnoremap <localleader>b :FufDir<CR>
nnoremap <localleader>f :FufFile<CR>
nnoremap <localleader>d :FufFileWithCurrentBufferDir<CR>

nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Up> :resize -2<CR>
nnoremap <Down> :resize +2<CR>

nnoremap <leader><TAB> <C-w><C-w><CR>
inoremap jj <ESC>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

nnoremap <leader>a :Ack!<Space>
nnoremap <leader>aa :AckWindow<cr>



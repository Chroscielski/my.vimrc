set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"Automatic closing brackets
Plugin 'Raimondi/delimitMate'
"Press cs:' inside :Hello world!: to change it to 'Hello world!'
Plugin 'tpope/vim-surround'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

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

let g:airline#extensions#tabline#enabled = 1
set laststatus=2
set bs=2
set ts=4
set sw=4
set number
set ruler
syntax enable
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Commenting blocks of code.
autocmd FileType javascript,c,cpp,java,scala 	let b:comment_leader = '// '
autocmd FileType sh,ruby,python   		let b:comment_leader = '# '
autocmd FileType conf,fstab       		let b:comment_leader = '# '
autocmd FileType tex              		let b:comment_leader = '% '
autocmd FileType mail             		let b:comment_leader = '> '
autocmd FileType vim              		let b:comment_leader = '" '
noremap <silent> ,cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_leader,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> ,cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_leader,'\/')<CR>//e<CR>:nohlsearch<CR>

" Syntax highlighting at search
:set hlsearch

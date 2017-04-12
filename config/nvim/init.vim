"Enable Pathogen
execute pathogen#infect()
filetype plugin indent on

"automaticaly remove trailing whitespace for specific file types
autocmd FileType .html,.css,.py,.cs,.c,.cpp,.txt,.java,.php,.js,.zsh,.sh autocmd BufWritePre <buffer> :%s/\s\+$//e

"HI ENERGY BACKSPACES
set backspace=indent,eol,start

"remove (kebab)  powerline chars
let g:airline_left_sep=''
let g:airline_right_sep=''

"set default airline theme
let g:airline_theme='base16_monokai'

"Nerdtree settings
"changed arrows
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

"Tagbar settings
"change fold icons so it's gucci over SSH
let g:tagbar_iconchars=['+','~']

"emmet settings
"changed leader keys to something easier
let g:user_emmet_leader_key='<C-E>'
"enable only for HTML&CSS
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
"enable only in normal mode
let g:user_emmet_mode='n'


"map mapleader to ,-key
let mapleader = ","

"NERDcommenter settings
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1


"toggle paste mode with F2 and show it in the status bar
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

"map NERDTree to F3 in Normal Mode
nnoremap <F3> :NERDTreeToggle <CR>

"map Undotree to F4 in Normal Mode
nnoremap <F4> :UndotreeToggle <bar> UndotreeFocus <CR>

"toggle tagbar with F8
nnoremap <F8> :TagbarToggle <CR>

"get battery information
"nnoremap <F12> :echo(system('bash ~/scripts/get_power.sh; grep -E "state\|time\|percentage" ~/tmp/upower_out')) <CR>

"Tab settings
set tabstop=1
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set cindent

"Indent Line Settings
"visible leading blanks
let g:indentLine_leadingSpaceEnabled=1
let g:indentLine_leadingSpaceChar='.'
let g:indentLine_char = '|'

"sets 80 char column & cursor position
set ruler
set colorcolumn=80

"show line number to the side
set number

"enable code folds
set foldmethod=indent
set foldlevelstart=1

"use utf-8 characters
set encoding=utf-8

"modify split navigation to use less keystrokes
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>
nnoremap <BS> <C-W><C-H>

"faster split closes
nnoremap <C-X> :q! <CR>

"close all
nnoremap <C-Q> :qa <CR>

"modify split addition location to be more natural
set splitbelow
set splitright

"split shortcuts
nnoremap <C-S> :vsplit <CR>
nnoremap <C-I> :split <CR>

"ruler format
set rulerformat=%20(%l/%L,\ %c%V%)

"shows commands
set showcmd

"enables spell checking for tex and txt files
autocmd FileType tex set spell
autocmd FileType txt set spell

"display settings
set background=dark

"sets colorscheme & enable syntax highlighting
syntax on
let g:impact_transbg=0
colorscheme monokai

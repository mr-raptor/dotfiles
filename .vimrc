set nocompatible
execute pathogen#infect()
filetype plugin indent on
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

syntax enable
set background=light
let g:solarized_termtrans=1
let g:solarized_termcolors=256
colorscheme solarized

set autoindent
set wildmenu
set nofoldenable
set ignorecase
set incsearch
set nohlsearch
set laststatus=2
set noshowmode
set colorcolumn=80
set nobackup
set nowritebackup
let g:netrw_list_hide='.*\.swp$'
let g:netrw_banner=0
let g:netrw_browse_split=3
let g:vim_markdown_folding_disabled=1
let g:vim_json_syntax_conceal=0
let g:NERDTreeWinSize=29
let g:hardtime_default_on=1

map <C-h> :tabprevious<CR>
map <C-l> :tabnext<CR>
map <Tab> <C-w>w
map <S-Tab> <C-w>W
map <Esc>h <C-w>h
map <Esc>j <C-w>j
map <Esc>k <C-w>k
map <Esc>l <C-w>l
map <Esc>c <C-w>c
map <C-n> :NERDTreeTabsToggle<CR>
map <C-t> :tabe 

au BufWinEnter * set expandtab | set tabstop=4 | set shiftwidth=4
au BufWinEnter *.coffee set tabstop=2 | set shiftwidth=2
au BufWinEnter *.html set tabstop=2 | set shiftwidth=2
au BufWinEnter *.gpp set tabstop=2 | set shiftwidth=2
au BufWinEnter *.jade set tabstop=2 | set shiftwidth=2
au BufWinEnter *.styl set tabstop=2 | set shiftwidth=2
au BufWinEnter *.less set tabstop=2 | set shiftwidth=2
au BufWinEnter *.eco set tabstop=2 | set shiftwidth=2
au BufWinEnter *.rb set tabstop=2 | set shiftwidth=2
au BufWinEnter Gemfile set tabstop=2 | set shiftwidth=2
au BufWinEnter Rakefile set tabstop=2 | set shiftwidth=2
au BufWinEnter Makefile set noexpandtab

highlight ExtraWhitespace ctermbg=red guibg=red
au BufWinEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhitespace /\s\+$/
au BufWinLeave * call clearmatches()

set langmap=ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl\;'zxcvbnm\\,.,ЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>

if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

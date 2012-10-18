set nocompatible
set showcmd
set ruler

set shiftwidth=4
set tabstop=4
set softtabstop=4

set autoindent
set smartindent
set smarttab
set cindent
set expandtab

set nohlsearch
set incsearch
set smartcase
set ignorecase

filetype plugin on
filetype indent on

let mapleader = ","

"file completion
set wildmenu
set wildmode=list:longest,full

"CUDA  Cumpute Unified Device Architecture
au BufNewFile,BufRead *.cu set filetype=cuda
au BufNewFile,BufRead *.json set filetype=javascript

au BufNewFile,BufRead *.s setlocal filetype=mips
						\ shiftwidth=8
						\ tabstop=8

au BufNewFile,BufRead *.thrift set filetype=thrift

set tags=./tags;/

"let g:zenburn_high_Contrast=1
"color zenburn
set t_Co=256

noremap <leader>a :CtrlP ~/base/coursera<CR>

noremap <leader>t :TagbarToggle<CR>
noremap <leader>o :NERDTreeToggle<CR>
noremap <leader>, :BufExplorer<CR>

noremap <C-S>		:update<CR>
vnoremap <C-S>		<C-C>:update<CR>
inoremap <C-S>		<C-O>:update<CR>

"auto completion
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
inoremap <expr> <Space> pumvisible() ? "\<C-y>" : "\<C-g>u\<Space>"
inoremap <expr> <C-n> pumvisible() ? '<C-n>' : '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
inoremap <expr> <M-,> pumvisible() ? '<C-n>' : '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

set guifont=Monaco:h13

"NERDTree
let NERDTreeIgnore = ['\.pyc$']

"ctrlP
let g:ctrlp_custom_ignore = {
\   'file': '\.pyc$\|\.class$',
\   'dir':  '\.git$\|\.hg$\|\.svn$',
\ }

"pathogen
call pathogen#infect()


inoremap kk <Esc>
let g:clipbrdDefaultReg = '+'


if has("terminfo")
    set t_Co=16
    set t_AB=[%?%p1%{8}%<%t%p1%{40}%+%e%p1%{92}%+%;%dm
    set t_AF=[%?%p1%{8}%<%t%p1%{30}%+%e%p1%{82}%+%;%dm
else
    set t_Co=16
    set t_Sf=[3%dm
    set t_Sb=[4%dm
endif

syntax on

highlight Comment       ctermfg=DarkGreen
highlight Constant      ctermfg=DarkMagenta
highlight Character     ctermfg=DarkRed
highlight Special       ctermfg=DarkBlue
highlight Identifier    ctermfg=DarkCyan
highlight Statement     ctermfg=DarkBlue
highlight PreProc       ctermfg=DarkBlue
highlight Type          ctermfg=DarkBlue
highlight Number        ctermfg=DarkBlue
highlight Delimiter     ctermfg=DarkBlue
highlight Error         ctermfg=Black
highlight Todo          ctermfg=DarkBlue
highlight WarningMsg    term=NONE           ctermfg=Black ctermbg=NONE
highlight ErrorMsg      term=NONE           ctermfg=DarkRed ctermbg=NONE

" These settings only affect the X11 GUI version (which is different
" than the fully Carbonized version at homepage.mac.com/fisherbb/

highlight Comment       guifg=Green                 gui=NONE
highlight Constant      guifg=Magenta               gui=NONE
highlight Character     guifg=Red                   gui=NONE
highlight Special       guifg=Blue                  gui=NONE
highlight Identifier    guifg=DarkCyan              gui=NONE
highlight Statement     guifg=DarkGreen             gui=NONE
highlight PreProc       guifg=Purple                gui=NONE
highlight Type          guifg=DarkGreen             gui=NONE
"highlight Normal                   guibg=#E0F2FF   gui=NONE
highlight Number        guifg=Blue                  gui=NONE
"highlight Cursor       guifg=NONE  guibg=Green
"highlight Cursor       guifg=bg    guibg=fg
highlight Delimiter     guifg=blue                  gui=NONE
"highlight NonText                  guibg=lightgray gui=NONE
"highlight Error        guifg=White guibg=Red       gui=NONE
highlight Error         guifg=NONE  guibg=NONE      gui=NONE
highlight Todo          guifg=Blue  guibg=Yellow    gui=NONE

"#### end color settings #############

colors darkblue
set number
set mouse=a
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed
set backspace=indent,eol,start
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells

set pastetoggle=<F2>

nnoremap <Down> gj
nnoremap <Up> gk

nnoremap ; :
:let mapleader = ","

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

nmap <silent> ,/ :nohlsearch<CR>

set makeprg=codequality\ %
" Turn off line numbering for the error buffer
au BufReadPost quickfix setlocal nonumber

" F4: run the make program
nmap <F5> :make<CR>
vmap <F5> <C-o>:make<CR>

" F1: close the error window
nmap <F1> :cclose<CR>
imap <F1> <C-o>:cclose<CR>

" F2/F3: move between errors
nmap <F2> :cprev<CR>
nmap <F3> :cnext<CR>
imap <F2> <C-o>:cprev<CR>
imap <F3> <C-o>:cnext<CR>
nmap <F6> :%s/\s\+$<CR>
vmap <F6> <C-o>::%s/\s\+$<CR>

:hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorcolumn!<CR>
:nnoremap <Leader>x :set cursorline!<CR>

:nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

:set foldenable
:set foldmethod=indent

:set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ [%l\,%c]%=\ %{strftime(\"%d/%m/%Y-%H:%M\")}

:set laststatus=2

filetype plugin indent on

set colorcolumn=120
if &background == 'light'                                                       
    hi ColorColumn term=reverse ctermbg=lightgrey guibg=lightgrey                 
else                                                                            
    hi ColorColumn term=reverse ctermbg=darkgrey guibg=darkgrey                   
endif                                                                           

highlight WhitespaceEOL term=reverse ctermfg=red ctermbg=NONE cterm=underline guifg=red guibg=NONE gui=underline
" NOTE: lookbehind prevents matching on spaces at beginning of line
match WhitespaceEOL /\([^.!? \t]\@<=\|[.!?]\s\)\s\s\+$/

:command WQ wq
:command Wq wq
:command W w
:command Q q

syntax enable
set background=dark
"let g:solarized_termcolors=256
colorscheme solarized
noremap gp "+p

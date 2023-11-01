set guifont=Lucida_Console:h11

" CoC extensions
let g:coc_global_extensions = ['coc-tsserver']
let mapleader = ","
let maplocalleader = ",,"

"Ben's Settings -----------------{{{
syntax on
colorscheme monokai

set termguicolors
" set -----------{{{
set wildmode=longest,list,full
set wildmenu
set shortmess-=S
set path+=**
set diffopt=vertical
set incsearch
set hlsearch
set hidden
set fileformat=unix
set nocompatible
set noswapfile
"set lazyredraw "attempting to fix laggy cursor movement.
set numberwidth=3
set go-=m      "remove menu
set go-=T      "remove Toolbar
set go-=r      "remove right scroll bar
set go-=L      "remove left scroll bar
set nowrap
set splitbelow "new split below
set splitright "new split right
set nobackup
set nowritebackup
set cursorline
set expandtab
set tabstop=2
set shiftwidth=2
set expandtab
set listchars=tab:\|.,trail:-,extends:>,precedes:<,nbsp:- "whitespace characters
set nolist "turn whitespace characters off
set foldmethod=manual
set nofoldenable
set ai
set si
set synmaxcol=250
set backspace=2 "make backspace work on all text
"}}}
" let -------------{{{
let g:session_autosave = 'no'
let g:session_autoload = 'no'
let delimitMate_expand_cr=1
let NERDCompactSexyComs = 1 "enable compact 'sexy' commets for NERDcomments
"}}}
" various ------------------{{{
execute pathogen#infect()
runtime macros/matchit.vim
filetype plugin on
filetype indent on 

"light highlight text that is wider than 80 chars
"highlight OverLength ctermbg=red ctermfg=white guibg=#3E3D32
"match OverLength /\%81v.\+/

"}}}

" easyMotion ------------------{{{
map <space> <Plug>(easymotion-prefix)
"}}} 

" snipMate  ------------------{{{
let g:snipMate = { 'snippet_version' : 1 }
"}}} 

"}}}

"netrw stuff ---------{{{
let g:netrw_altfile = 1
let t:previouslyOpened = 0
nnoremap <leader>b :call ToggleRex()<cr>


function ToggleRex()
  let f=bufnr()

  if !t:previouslyOpened
    let t:previouslyOpened = 1
    Explore
  else
    Rexplore
  endif

  let @#=f
endfunction

"}}}

"Ben's Mappings ------------------{{{
" normal mode -----------{{{
" Terminal Alt mapping.
nnoremap ' `
nnoremap <C-j> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%>' . line('.') . 'l\S', 'e')<CR>
nnoremap <C-k> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>
nnoremap <Space>p a<Space><Esc>p
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :w:source $MYVIMRC<cr>
nnoremap <leader>p "+p
nnoremap <localleader>J :llast<cr>
nnoremap <localleader>K :lfirst<cr>
nnoremap <localleader>j :lne<cr>
nnoremap <localleader>k :lp<cr>

" Fugitive -----------------{{{
nnoremap <leader>gs :Git
" }}}

"}}}
" visual mode ---------------------{{{
vnoremap <leader>' <Esc>`>a'<Esc>`<i'<Esc>
vnoremap <leader>" <Esc>`>a"<Esc>`<i"<Esc>
vnoremap <leader>y "+y
vnoremap <leader>p "+p
"}}}
" 
inoremap jk 
inoremap ;; <Esc>vvA;<Esc>`<a
inoremap ,, <Esc>vvA,<Esc>`<a
"}}}

" command mode -----------------{{{
"}}}

"Ben's Commands ------------------{{{
  command! FormatJson execute "set filetype=json | %!python -m json.tool"
" }}}

"Ben's Abbrevieation ----------------------{{{
"}}}

"Ben's AutoCommands ----------------{{{

" vimscript augroup -----------------{{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim :normal zMgg
augroup END
"}}}

"}}}

"Ben's Functions ----------------{{{
"}}}

"Ben's Statusline ----------------------{{{

hi User1 ctermfg=1  ctermbg=14 guifg=#F92672 guibg=#3E3D32    "status line red
hi User2 ctermfg=4  ctermbg=14 guifg=#66D9EF guibg=#3E3D32    "status line blue
hi User3 ctermfg=3  ctermbg=14 guifg=#E6DB74 guibg=#3E3D32    "status line yellow
hi User4 ctermfg=9  ctermbg=14 guifg=#75715E guibg=#3E3D32    "status line grey
hi User5 ctermfg=6  ctermbg=14 guifg=#FD971E guibg=#3E3D32    "status line orange
hi User6 ctermfg=2  ctermbg=14 guifg=#A6E22E guibg=#3E3D32    "status line green
hi User7 ctermfg=13 ctermbg=14 guifg=#AE81FF guibg=#3E3D32    "status line purple

set laststatus=2
set statusline=
set statusline+=%2*%t\ %y%*                             " filename, filetype
set statusline+=%1*%m%r%w%*                             " flags colored red
set statusline+=%=                                      " right aligned stuf
set statusline+=%5*%1.(\ %{fugitive#statusline()}\ %)%* " fugitive (git) status line
set statusline+=%6*%c%4*:%6*%l%4*/%6*%L\                " column:line out of lines
set statusline+=%7*%P                                   " scroll position

"}}}

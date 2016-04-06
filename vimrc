"Ben's Settings -----------------{{{
syntax on
" set -----------{{{
set incsearch
set hlsearch
set hidden
set fileformat=unix
set nocompatible
set noswapfile
set lazyredraw "attempting to fix laggy cursor movement.
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
set guifont="WenQuanYi Micro Hei Mono":8,Consolas:h9:cANSI "set font
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
colorscheme monokai
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

" vim-angular ------------------{{{
let g:angular_source_directory = 'WebContent/js'
let g:angular_filename_convention = 'titlecased'
"}}} 

" Syntastic ------------------{{{
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
"}}}
" Unite ------------------{{{
let g:unite_source_history_yank_enable = 1 "turn on Unite yank history
let g:unite_source_rec_max_cache_files = 9000
call unite#custom#source('file_rec', 'ignore_pattern', 'coverage/\|node_modules/\|WebContent/temp/\|WebContent/dist')
"}}} 

"}}}

"Ben's Mappings ------------------{{{
let mapleader = ","
let maplocalleader = ",,"
" normal mode -----------{{{
"nnoremap <localleader>c :nohlsearch
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :w:source $MYVIMRC
nnoremap <leader>b :NERDTreeToggle<cr>
nnoremap <leader>ts :syntax off<cr>:syntax on<cr>
nnoremap <leader>/ yiw/"
nnoremap <leader>p "+p
nnoremap <localleader>j :lne<cr>
nnoremap <localleader>k :lp<cr>
nnoremap <localleader>J :llast<cr>
nnoremap <localleader>K :lfirst<cr>
nnoremap <C-j> m` j"_dd`` " delete line below
nnoremap <C-k> m` k"_dd`` "delete line above
nnoremap <A-S-j> ddp
nnoremap <A-S-k> ddkP
nnoremap <A-k> <C-Y>
nnoremap <A-j> <C-E>
nnoremap <A-^> :A
nnoremap <A-.> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%<' . line('.') . 'l\S', 'be')<CR>" Jump to lines with same indentation
nnoremap <A-,> :call search('^'. matchstr(getline('.'), '\(^\s*\)') .'\%>' . line('.') . 'l\S', 'e')<CR>
nnoremap <Space>p a<Space><Esc>p
nnoremap zB :call <SID>CenterBlock()<cr>
nnoremap zo za
nnoremap zT  zt3k3j
nnoremap ' `
nnoremap <A-'> '
nnoremap <A-l> zl
nnoremap <A-l> 20zl
nnoremap <A-h> zh
nnoremap <A-k> 
nnoremap <A-j> 

" Unite -----------------{{{
nnoremap <leader>q :Unite -start-insert file_rec<cr>
nnoremap <leader>Q :Unite -start-insert file<cr>
nnoremap <A-p> :Unite history/yank<cr>
nnoremap <A-6> :Unite -start-insert buffer<cr>

nnoremap <leader>gj :Unite grep:WebContent/js
nnoremap <leader>gp :Unite grep:WebContent/partials
nnoremap <leader>gl :Unite grep:WebContent/less
nnoremap <leader>gt :Unite grep:test/unit
" }}}

" Fugitive -----------------{{{
nnoremap <leader>gs :Gstatus
" }}}

"}}}
" visual mode ---------------------{{{
vnoremap <leader>' <Esc>`<i'<Esc>`>a'<Esc>hvi'
vnoremap <leader>" <Esc>`<i"<Esc>`>a"<Esc>hvi"
vnoremap <leader>/ y/"
vnoremap <leader>y "+y
vnoremap <leader>p "+p
 " find all occuences
"}}}
" 
inoremap jk 
inoremap ;; <Esc>vvA;<Esc>`<a
inoremap ,, <Esc>vvA,<Esc>`<a
inoremap <C-u> <Esc>viw~ea
"}}}

" command mode -----------------{{{
cnoremap <A-h> <S-Left>
cnoremap <A-l> <S-Right>
cnoremap <C-h> <Left>
cnoremap <C-l> <Right>
"}}}

"Ben's Commands ------------------{{{
  command! Cclose execute "copen | cex [] | cclose"
" }}}

"Ben's Abbrevieation ----------------------{{{
iab sco $scope
"}}}

"Ben's AutoCommands ----------------{{{
augroup sidekick
  autocmd!
  autocmd BufEnter */sidekick/*.js set tabstop=4
  autocmd BufEnter */sidekick/*.js set shiftwidth=4
  autocmd BufEnter */sidekick/*.js set expandtab
  autocmd BufLeave */sidekick/*.js set tabstop=2
  autocmd BufLeave */sidekick/*.js set shiftwidth=2
  autocmd BufLeave */sidekick/*.js set expandtab

  autocmd BufEnter */sidekick/*.less command! PeakVars execute "vsplit /home/bmiller/workspace/git/sidekick/weblib/WebContent/weblib/lib/bootstrap/theme-social-light/variables.less"

augroup END

augroup javascript
  autocmd!
  autocmd Filetype javascript nnoremap <leader>db :<c-u>call <SID>JsDebugger()<cr>
augroup END

augroup html
  autocmd!
augroup END

augroup css
  autocmd!
augroup END

" vimscript augroup -----------------{{{
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim :normal zMgg
augroup END
"}}}

"}}}

"Ben's Functions ----------------{{{

function! s:CenterBlock()
  execute "normal! viBv"
  let startLine = line("'<")
  let endLine = line("'>")
  let toMiddle = (endLine-startLine)/2
  execute "normal! ".toMiddle."kzz'<k$"
endfunction 

function! s:JsDebugger()
  let l:saveUnamedReg = @@
  execute "normal! yy"
  let matchs = matchstr(@@, '^\s*debugger;\s*\n')
  if empty(matchs) 
    execute "normal! odebugger;_"
  else
    execute "normal! ddk_"
  endif
  let @@ = l:saveUnamedReg
endfunction 
"}}}

"Ben's Statusline ----------------------{{{

hi User1 guifg=#F92672 guibg=#3E3D32    "status line red
hi User2 guifg=#66D9EF guibg=#3E3D32    "status line blue
hi User3 guifg=#E6DB74 guibg=#3E3D32    "status line yellow
hi User4 guifg=#75715E guibg=#3E3D32    "status line grey
hi User5 guifg=#FD971E guibg=#3E3D32    "status line orange
hi User6 guifg=#A6E22E guibg=#3E3D32    "status line green
hi User7 guifg=#AE81FF guibg=#3E3D32    "status line purple

set laststatus=2
set statusline=
set statusline+=%2*%t\ %y%*                             " filename, filetype
set statusline+=%1*%m%r%w%*                             " flags colored red
set statusline+=%1*%{SyntasticStatuslineFlag()}%*       " syntastic lint warning
set statusline+=%=                                      " right aligned stuf
set statusline+=%5*%1.(\ %{fugitive#statusline()}\ %)%* " fugitive (git) status line
set statusline+=%6*%c%4*:%6*%l%4*/%6*%L\                " column:line out of lines
set statusline+=%7*%P                                   " scroll position

"}}}

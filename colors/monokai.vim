" Ben's Vim color file
" Forked from: http://desintegr.googlecode.com/svn/config/vim/colors/monokai.vim

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

set t_Co=256
let g:colors_name = "monokai"

hi Normal       guifg=#F8F8F2 guibg=#272822

"Main highlight groups
hi Cursor       ctermbg=1 ctermfg=0 guibg=fg
hi CursorLine   ctermfg=NONE ctermbg=5    cterm=NONE guifg=NONE    guibg=#181814 gui=NONE
hi Directory    ctermfg=4    ctermbg=NONE cterm=NONE guifg=#66D9EF gui=none
hi DiffAdd      ctermfg=NONE ctermbg=2    cterm=NONE guifg=bg      guibg=#A6E22E
hi DiffChange   ctermfg=NONE ctermbg=3    cterm=NONE guifg=bg      guibg=#f4bf75
hi DiffDelete   ctermfg=NONE ctermbg=4    cterm=NONE guifg=bg      guibg=#F92672
hi DiffText     ctermfg=0    ctermbg=3    cterm=NONE guifg=bg      guibg=#f4bf75
hi ErrorMsg     ctermfg=1    ctermbg=0    cterm=NONE guifg=#F92672 guibg=bg gui=none
hi VertSplit    ctermfg=8    ctermbg=0    cterm=NONE guifg=#3E3D32 guibg=bg gui=none
hi Folded       ctermfg=8    ctermbg=0    cterm=NONE guifg=#75715E guibg=bg gui=none
hi FoldColumn   ctermfg=8    ctermbg=14   cterm=NONE guifg=#75715E guibg=#181814 gui=none
hi SignColum    ctermfg=8    ctermbg=14   cterm=NONE guifg=#75715E guibg=#181814 gui=none
hi IncSearch    ctermfg=0    ctermbg=13   cterm=NONE guifg=bg      guibg=#AE81ff gui=none
hi LineNr       ctermfg=8    ctermbg=14   cterm=NONE guifg=#75715E guibg=#181814 gui=none
hi MatchParen   ctermfg=4    ctermbg=5    cterm=BOLD guifg=bg      guibg=#AE81ff gui=bold
hi ModeMsg      ctermfg=13   ctermbg=0    cterm=NONE guifg=bg      guibg=#AE81ff gui=none
hi MoreMsg      ctermfg=4    ctermbg=NONE cterm=NONE guifg=#66D9EF guibg=NONE gui=none
hi NonText      ctermfg=8    ctermbg=NONE cterm=NONE guifg=#3E3D32 guibg=NONE gui=none
hi Pmenu        ctermfg=7    ctermbg=14   cterm=NONE guifg=fg      guibg=#181814
hi PmenuSel     ctermfg=2    ctermbg=NONE   cterm=NONE guifg=fg      guibg=bg
hi PmenuSbar    ctermfg=NONE ctermbg=0    cterm=NONE               guibg=bg
hi PmenuThumb   ctermfg=8    ctermbg=NONE cterm=NONE guifg=fg
hi Question     ctermfg=2    ctermbg=NONE cterm=NONE guifg=#A6E22E gui=none
hi Search       ctermfg=0    ctermbg=13   cterm=NONE guifg=bg      guibg=#AE81ff gui=none
hi SpecialKey   ctermfg=8    ctermbg=NONE cterm=NONE guifg=#181814 gui=none
hi SpellBad     ctermbg=1    guisp=#F92672
hi SpellCap     ctermbg=4    guisp=#66D9EF
hi SpellRare    ctermbg=13   guisp=#AE81FF
hi StatusLine   ctermfg=8    ctermbg=14   cterm=NONE guifg=fg      guibg=#3E3D32 gui=none
hi StatusLineNC ctermfg=8    ctermbg=14   cterm=NONE guifg=#75715E guibg=#181814 gui=none
hi TabLine      ctermfg=8    ctermbg=14   cterm=NONE guifg=#75715E guibg=#181814 gui=none
hi TabLineFill  ctermfg=8    ctermbg=14   cterm=NONE guifg=fg      guibg=#181814 gui=none
hi TabLineSel   ctermfg=8    ctermbg=14   cterm=NONE guifg=fg      guibg=#181814 gui=none
hi Title        ctermfg=1    ctermbg=NONE cterm=NONE guifg=#F92672 gui=none
hi Visual       ctermfg=NONE ctermbg=14   cterm=NONE guibg=#181814 gui=none
hi WarningMsg   ctermfg=1    ctermbg=NONE cterm=NONE guifg=#F92672 gui=none

" Plugin specific highlight groups
hi MyTagListFileName ctermfg=13ctermbg=0 cterm=NONE guifg=#181814 guibg=bg gui=none

" Color groups
hi Blue    ctermfg=4  cterm=NONE guifg=#66D9EF gui=none
hi Green   ctermfg=2  cterm=NONE guifg=#A6E22E gui=none
hi Grey    ctermfg=8  cterm=NONE guifg=#75715E gui=none
hi Orange  ctermfg=6  cterm=NONE guifg=#FD971F gui=none
hi Purple  ctermfg=13 cterm=NONE guifg=#AE81FF gui=none
hi Red     ctermfg=1  cterm=NONE guifg=#F92672 gui=none
hi White   ctermfg=15 cterm=NONE guifg=#F8F8F2 gui=none
hi Yellow  ctermfg=3  cterm=NONE guifg=#f4bf75  gui=none

hi BlueU   ctermfg=4 cterm=underline guifg=#66D9EF gui=underline

hi RedR    ctermfg=15 ctermbg=1 cterm=NONE guifg=fg guibg=#F92672 gui=none
hi YellowR ctermfg=0  ctermbg=3 cterm=NONE guifg=bg guibg=#FD971F gui=none


" Syntax highligh groups
hi! link Comment      Grey
"
hi! link Constant     Purple
hi! link String       Yellow
hi! link Character    Yellow
"hi Number
"hi! link Boolean Blue
"hi Float
"
hi! link Identifier   Green
"hi Function
"
hi! link Statement    Red
"hi Conditional
"hi Repeat
"hi Label
hi! link Operator     Green
"hi Keyword
"hi Exception
"
hi! link PreProc      Orange
"hi Include
"hi Define
"hi Macro
"hi PreCondit
"
hi! link Type         Blue
hi! link StorageClass Red
hi! link Structure    Grey
"hi Typedef
"
hi! link Special      Grey
"hi! link SpecialChar  Grey
hi! link Tag          Green
"hi Delimiter
"hi SpecialComment
"hi Debug
"
hi! link Underlined   BlueU
"hi Ignore
hi! link Error        RedR
hi! link Todo         YellowR

" Language specific highligh groups
" C
hi link cStatement              Green
" C++
hi link cppStatement            Green
" CSS
hi link cssBraces               White
hi link cssFontProp             White
hi link cssColorProp            White
hi link cssTextProp             White
hi link cssBoxProp              White
hi link cssRenderProp           White
hi link cssAuralProp            White
hi link cssRenderProp           White
hi link cssGeneratedContentProp White
hi link cssPagingProp           White
hi link cssTableProp            White
hi link cssUIProp               White
hi link cssFontDescriptorProp   White
" Java
hi link javaStatement           Green
" Ruby
hi link rubyClassVariable       White
hi link rubyControl             Green
hi link rubyGlobalVariable      White
hi link rubyInstanceVariable    White

" JavaScript
"hi link javaScriptBraces        Grey
"hi link javaScriptNumber        Grey
"hi javaScriptParens   ctermfg=1    ctermbg=NONE cterm=NONE guifg=#F92672 gui=none
"hi link JavaScriptIdentifier        Grey
"hi link JavaScriptConditional        Grey

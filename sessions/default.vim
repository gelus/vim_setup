" ~/Dropbox/vimfiles/vimfiles/sessions/default.vim:
" Vim session script.
" Created by session.vim 2.4.9 on 14 March 2014 at 17:15:35.
" Open this file in Vim and run :source % to restore your session.

set guioptions=aegit
silent! set guifont=
if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'monokai' | colorscheme monokai | endif
call setqflist([{'lnum': 77, 'col': 8, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/controllers/widgets/ArticleStreamController.js', 'text': '      .getArticlePreviews(config.currentPage,config.currentFilters,config.currentDateRange,config.pageLimit)'}, {'lnum': 98, 'col': 42, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/controllers/widgets/ArticleStreamController.js', 'text': '      });// close ArticleQueryApiService.getArticlePreviews()'}, {'lnum': 59, 'col': 35, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/directives/articlePreviewModal.js', 'text': '                            scope.getArticlePreviews();'}, {'lnum': 66, 'col': 23, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/directives/articlePreviewModal.js', 'text': '                scope.getArticlePreviews = function() {'}, {'lnum': 70, 'col': 48, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/directives/articlePreviewModal.js', 'text': '                        ArticleQueryApiService.getArticlePreviews( scope.currentPage, scope.currentFilters, scope.currentDateRange ).then( function( promise ) {'}, {'lnum': 116, 'col': 27, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/directives/articlePreviewModal.js', 'text': '                    scope.getArticlePreviews();'}, {'lnum': 217, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/services/ArticleQueryApiService.js', 'text': '        Service.getArticlePreviews = function( pageNumber, filters, dateRange, limit ) { '}])
let SessionLoad = 1
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/git/SaasCoreProjects/artsa/WebContent
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +123 js/controllers/dashboards/filters/DateFilterController.js
badd +95 js/directives.js
badd +1 partials/moment-date-picker.html
badd +1 partials/dashboards/filters/datepicker-popup.html
badd +1 js/directives/dashboards/filters/dateFilter.js
badd +31 partials/dashboards/filters/date-filter.html
badd +113 ~/git/SaasCoreProjects/artsa/test/unit/directivesSpec.js
badd +33 ~/git/SaasCoreProjects/artsa/test/unit/directives/dashboards/dashboardFiltersSpec.js
badd +1 ~/git/SaasCoreProjects/artsa/test/unit/directives/dashboards/filters/dateFilterSpec.js
badd +205 js/controllers/topics/AdvancedTopicEditorController.js
badd +101 ~/git/SaasCoreProjects/artsa/test/unit/controllers/topics/AdvancedTopicEditorControllerSpec.js
badd +93 js/controllers/widgets/SentimentOverviewWidgetController.js
badd +20 index.html
badd +77 js/controllers/widgets/ArticleStreamController.js
badd +10 partials/directives/article-stream.html
badd +316 css/app.css
badd +93 js/controllers/ArticleItemController.js
badd +11 partials/util/article-preview-modal.html
badd +120 js/directives/articlePreviewModal.js
badd +1 ~/git/SaasCoreProjects/ArtsaAdmin/WebContent/css/app.css
badd +78 js/services/PipelineService.js
badd +160 js/services.js
badd +1 ~/git/SaasCoreProjects/eli/WebContent/js/router.js
badd +22 js/router.js
badd +1 js/services/ArticleQueryApiService.js
silent! argdel *
edit js/services/ArticleQueryApiService.js
set splitbelow splitright
wincmd t
set winheight=1 winwidth=1
" argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 228 - ((0 * winheight(0) + 30) / 60)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
228
normal! 017|
tabnext 1
if exists('s:wipebuf')
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

tabnext 1
1wincmd w
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
" ~/Dropbox/vimfiles/vimfiles/sessions/artsa.vim:
" Vim session script.
" Created by session.vim 2.4.9 on 12 March 2014 at 17:19:20.
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
call setqflist([{'lnum': 10, 'col': 76, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/controllers/widgets/ArticleStreamController.js', 'text': 'artsa.controller(''StreamController'', [''$scope'', ''ArticleQueryApiService'', ''articleUtils'','}, {'lnum': 11, 'col': 43, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/controllers/widgets/ArticleStreamController.js', 'text': '  function($scope,ArticleQueryApiService, articleUtils) {'}, {'lnum': 7, 'col': 90, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/directives/articlePreviewModal.js', 'text': 'artsa.directive(''articlePreviewModal'', [''ArticleQueryApiService'', ''$modal'', ''$timeout'', ''articleUtils'','}, {'lnum': 8, 'col': 57, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/directives/articlePreviewModal.js', 'text': '    function( ArticleQueryApiService, $modal, $timeout, articleUtils ) {'}, {'lnum': 10, 'col': 99, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/services/ArticleQueryApiService.js', 'text': 'artsa.service( ''ArticleQueryApiService'', [''$http'', ''config'', ''SuperModel'', ''auth'', ''$rootScope'', ''articleUtils'','}, {'lnum': 11, 'col': 60, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/services/ArticleQueryApiService.js', 'text': '    function( $http, config, SuperModel, auth, $rootScope, articleUtils ) {'}, {'lnum': 258, 'col': 32, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/services/ArticleQueryApiService.js', 'text': '                data.results = articleUtils.translateArticles(data.results);'}, {'lnum': 82, 'col': 17, 'valid': 1, 'vcol': 0, 'nr': 0, 'type': '', 'pattern': '', 'filename': 'js/services.js', 'text': 'artsa.service( "articleUtils", function() {'}])
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
badd +100 js/controllers/dashboards/filters/DateFilterController.js
badd +5 partials/dashboards/stream-dashboard.html
badd +10 partials/directives/article-stream.html
badd +24 js/controllers/widgets/ArticleStreamController.js
badd +1 ~/Dropbox/vimfiles/vimfiles/sessions/artsaWebContent.vim
badd +39 index.html
badd +126 ~/Dropbox/vimfiles/vimfiles/vimrc
badd +287 css/app.css
badd +1 bpartials/article.html
badd +126 partials/topics/advanced-topic-editor.html
badd +65 js/router.js
badd +1 partials/about-modal.html
badd +1 partials/dashboards/overview-dashboard.html
badd +7 js/directives/dashboards/overviewBar.js
badd +18 js/directives/dashboards/dashboardLabel.js
badd +1 js/directives/ValidationDirectives.js
badd +14 partials/dashboards/dashboard-label.html
badd +18 partials/landing.html
badd +17 partials/app.html
badd +11 partials/topics/topics.html
badd +2803 lib/ui-bootstrap/ui-bootstrap-tpls-0.10.0.js
badd +164 js/services/SuperModel.js
badd +5 partials/dashboards/dashboard-filters.html
badd +7 js/directives/dashboards/filters/dateFilter.js
badd +25 partials/dashboards/filters/date-filter.html
badd +1 ~/git/SaasCoreProjects/artsa/test/unit/services/SuperModelSpec.js
badd +1 js/controllers/dashboards/DashboardLabelController.js
badd +19 js/controllers/dashboards/DashboardFiltersController.js
badd +57 ~/git/SaasCoreProjects/eli/WebContent/js/router.js
badd +1 js/controllers/dashboards/OverviewDashboardController.js
badd +5 js/controllers/dashboards/StreamDashboardController.js
badd +1 ~/git/SaasCoreProjects/artsa/test/unit/controllers/dashboards/OverviewDashboardControllerSpec.js
badd +1 ~/git/SaasCoreProjects/artsa/test/unit/controllers/dashboards/StreamDashboardControllerSpec.js
badd +2 js/directives/widgets/topEntitiesBubbleChart.js
badd +1 js/controllers/widgets/AlertSettingsController.js
badd +10 js/directives/widgets/articleStream.js
badd +10 js/directives/widgets/widgetDirectives.js
badd +24 js/directives.js
badd +1 js/controllers/widgets/ConversationWidgetController.js
badd +1 js/controllers/AppController.js
badd +1 js/controllers/LandingController.js
badd +17 partials/dashboards/overview-bar.html
badd +1 partials/widgets/heat-map-widget.html
badd +57 js/directives/articlePreviewModal.js
badd +101 js/services.js
badd +259 js/services/ArticleQueryApiService.js
badd +8 partials/util/article-preview-modal.html
badd +22 js/directives/articleItem.js
badd +67 js/controllers/ArticleItemController.js
badd +18 partials/article-item.html
badd +19 ~/git/SaasCoreProjects/artsa/test/unit/controllers/ArticleItemControllerSpec.js
badd +46 ~/git/SaasCoreProjects/artsa/test/unit/directives/articleItemSpec.js
badd +264 js/controllers/widgets/SentimentVolumeController.js
badd +182 js/controllers/topics/AdvancedTopicEditorController.js
badd +44 js/services/TopicService.js
badd +1 js/services/PipelineService.js
badd +57 ~/git/SaasCoreProjects/weblib/WebContent/auth/js/widgets/aggregate/ConversationWidget.js
badd +24 ~/git/SaasCoreProjects/artsa/test/unit/directives/widgets/topEntitiesBubbleChartSpec.js
badd +60 ~/git/SaasCoreProjects/ArtsaAdmin/WebContent/js/services/services.js
silent! argdel *
edit js/controllers/widgets/ArticleStreamController.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
" argglobal
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 24 - ((23 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
24
normal! 0101|
lcd ~/git/SaasCoreProjects/artsa/WebContent
wincmd w
" argglobal
edit ~/git/SaasCoreProjects/artsa/WebContent/js/directives/articlePreviewModal.js
setlocal fdm=indent
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
let s:l = 57 - ((21 * winheight(0) + 29) / 59)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
57
normal! 057|
lcd ~/git/SaasCoreProjects/artsa/WebContent
wincmd w
exe 'vert 1resize ' . ((&columns * 119 + 119) / 239)
exe 'vert 2resize ' . ((&columns * 119 + 119) / 239)
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

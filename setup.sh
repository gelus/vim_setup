# vim plugins
declare -a packages=(
"https://github.com/rking/ag.vim.git"                    # AG the silver searcher 
"https://github.com/Raimondi/delimitMate.git"            # provides closing parenthesis
"https://github.com/mattn/emmet-vim.git"                 # emmet for vim
"https://github.com/mattn/flappyvird-vim.git"            # flappy bird for vim
"https://github.com/gregsexton/MatchTag.git"             # highlight matching HTML tags
"https://github.com/xolox/vim-misc.git"                  # misc library
"https://github.com/scrooloose/nerdcommenter.git"        # nifty code commenter
"https://github.com/scrooloose/nerdtree.git"             # directory viewer
"https://github.com/scrooloose/syntastic.git"            # syntax checker
"https://github.com/tomtom/tlib_vim.git"                 # utility functions
"https://github.com/Shougo/unite.vim.git"                # UNITE, awesome lots of things
"https://github.com/MarcWeber/vim-addon-mw-utils.gitj"   # utility lib
"https://github.com/gelus/vim-buffer-enhancement.git"    # buffer number mapping
"https://github.com/skammer/vim-css-color.git"           # css color preview
"https://github.com/easymotion/vim-easymotion.git"       # vim motions on crack
"https://github.com/tpope/vim-fugitive.git"              # git wrapper for vim
"https://github.com/nathanaelkane/vim-indent-guides.git" # indentation guides
"https://github.com/groenewege/vim-less.git"             # syntax highlighting for less
"https://github.com/garbas/vim-snipmate.git"             # snippets system!
"https://github.com/honza/vim-snippets.git"              # snippets for snipmate
"https://github.com/Shougo/vimshell.vim.git"             # run a shell in a vim buffer
)

# clean existing bundles 
if [ -d "bundle" ]; then
  rm -rf bundle;
fi

# make new bundle directory
# clone packages into bundle
mkdir bundle && cd bundle;
for repo in ${packages[@]}
do
  git clone "$repo";
done

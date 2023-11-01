# vim plugins
declare -a packages=(
"https://github.com/Raimondi/delimitMate.git"            # provides closing parenthesis
"https://github.com/mattn/emmet-vim.git"                 # emmet for vim
"https://github.com/gregsexton/MatchTag.git"             # highlight matching HTML tags
"https://github.com/xolox/vim-misc.git"                  # misc library
"https://github.com/scrooloose/nerdcommenter.git"        # nifty code commenter
"https://github.com/scrooloose/nerdtree.git"             # directory viewer
"https://github.com/scrooloose/syntastic.git"            # syntax checker
"https://github.com/tomtom/tlib_vim.git"                 # utility functions
"https://github.com/MarcWeber/vim-addon-mw-utils.gitj"   # utility lib
"https://github.com/easymotion/vim-easymotion.git"       # vim motions on crack
"https://github.com/tpope/vim-fugitive.git"              # git wrapper for vim
"https://github.com/garbas/vim-snipmate.git"             # snippets system!
"https://github.com/honza/vim-snippets.git"              # snippets for snipmate
"https://github.com/MarcWeber/vim-addon-mw-utils.git"    # util for snipmate
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


#make vimproc
cd vimproc.vim;
make;
cd ..;

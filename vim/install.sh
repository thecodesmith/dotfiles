BUNDLE_DIR=~/.vim/bundle
VUNDLE_REPO=https://github.com/gmarik/Vundle.vim

# Create Vim bundle directory
if [ ! -d $BUNDLE_DIR ]; then
    mkdir -p $BUNDLE_DIR
fi

# Download Vundle plugin manager
if [ ! -d $BUNDLE_DIR/Vundle.vim ]; then
    pushd $BUNDLE_DIR
    git clone $VUNDLE_REPO
    vim +PluginInstall
    popd
fi

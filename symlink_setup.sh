echo Current directory is `pwd`
REPO=`pwd`

echo Linking $REPO/vim to $HOME/.vim
rm -f $HOME/.vim
ln -fs $REPO/vim $HOME/.vim

echo Linking vimrc to $HOME/.vimrc
rm -f $HOME/.vimrc
ln -fs $REPO/vimrc $HOME/.vimrc

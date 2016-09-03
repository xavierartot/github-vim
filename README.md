## mercurial required - install if you don't already have it.
 brew install mercurial

## install Vim
 brew install vim

## if /usr/bin is before /usr/local/bin in your $PATH,
## hide the system Vim so the new version is found first
 sudo mv /usr/bin/vim /usr/bin/vim72

## should return /usr/local/bin/vim
 which vim vim


**Vim**
- install Vundle                   : git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
- install Syntastic                : cd ~/.vim/bundle && git clone --depth=1 https://github.com/scrooloose/syntastic.git


#Install

mercurial required - install if you don't already have it.
 brew install mercurial

## install Vim
 brew install vim

## if /usr/bin is before /usr/local/bin in your $PATH,
## hide the system Vim so the new version is found first
 sudo mv /usr/bin/vim /usr/bin/vim72

## should return /usr/local/bin/vim
 which vim vim

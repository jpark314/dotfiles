# dotfiles

I'm using zsh as my default shell for both Mac and Linux (Ubuntu and Arch/Majaro) and Vim as my primary text editor

I'm also trying to get used to emacs, because, well...what do you say, real developers use emacs for some reason (heard this phrase from a friend, not my idea)

I'll be updating my dotfiles accordingly whenever I make changes (It's a good habit to keep track of everything and sharing for other developers)

This may include small changes like adding comments and paths to a major overhaul

Installations
=============
* Installing tagbar:
  * Need to install universal ctags first. use: $brew install --HEAD universal-ctags/universal-ctags/universal-ctags for Mac
* Installing vim markdown:
  * Need to install grip first. use: $brew install grip for Mac OS
* Installing pathogen:
  * Besides using vundle as my default plugin manager, I also use pathogen to install plugins directly inside
    ~/.vim/bundle
  * (assuming you already have plugins directory inside ~/.vim)use: mkdir -p ~/.vim/autoload && curl -LSso ~/.vim/autoload/pathogen.vim https://top.pe/pathogen.vim
  * using pathogen, you don't need to run :PluginInstall in vim

Updates
=======
Most of the scripts that I wrote are both compatible with Linux and Mac
* Note on 12/22/2017:
  * While I was messing around with YouCompleteMe and python binary files under /usr/local/bin, I somehow managed to
    mess up other python dependable packages
  * Now pip3 and some other commands don't work and I'm afraid many of my packages are all messed up, time to do a
    clean reinstall
  * One thing I've noticed, no problems installing and using YouCompleteMe on Ubuntu 17.10, but after I upgrade Mac OS
    10.13.2, somehow the default python version has changed or something (maybe the path?) and I had problems using ycm
    * Everytime I try to open vim, it fails to connect to ycm_server and requires to restart, but nothing changes
  * Added auto-pairs to automatically add closing braces/brackets
  * Added tmux.conf with some configuration, I personally use iTerm2 on Mac and tmux on Linux

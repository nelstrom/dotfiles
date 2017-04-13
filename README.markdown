Installation

    git clone git://github.com/nelstrom/dotfiles.git

Create required directories:

    mkdir -p ~/.config/nvim
    mkdir -p ~/tmp

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/irbrc ~/.irbrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/ctags ~/.ctags
    ln -s ~/dotfiles/jshintrc ~/.jshintrc
    ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/dotfiles/gitconfig ~/.gitconfig
    ln -s ~/dotfiles/global-gitignore ~/.gitignore
    ln -s ~/dotfiles/init.vim ~/.config/nvim/init.vim

# VIM #

My preferences for Vim are stored in `dotfiles/vimrc` and `dotfiles/gvimrc`
respectively. All plugins and scripts are stored in the `dotfiles/vim`
directory.

# RUBY #

My preferences for IRB customisations are stored in `dotfiles/irbrc`. To get
the most from these, you should install the [interactive_editor][i_editor] and
[awesome_print][ap] gems, by running:

    gem install interactive_editor awesome_print




[jsbun]: http://github.com/pangloss/vim-javascript.git
[ap]: http://github.com/michaeldv/awesome_print
[i_editor]: http://github.com/jberkel/interactive_editor

Installation

    git clone git://github.com/nelstrom/dotfiles.git

Where possible, Vim plugins are installed as git submodules. Check these out by
running the commands:

    cd dotfiles
    git submodule init
    git submodule update

Create symlinks:

    ln -s ~/dotfiles/bashrc ~/.bashrc
    ln -s ~/dotfiles/vimrc ~/.vimrc
    ln -s ~/dotfiles/gvimrc ~/.gvimrc
    ln -s ~/dotfiles/irbrc ~/.irbrc
    ln -s ~/dotfiles/vim ~/.vim
    ln -s ~/dotfiles/ctags ~/.ctags
    ln -s ~/dotfiles/jshintrc ~/.jshintrc

I put Vim's backup and swap files in `~/tmp`, so that directory must exist. To
be sure, run: 

    mkdir ~/tmp

# VIM #

My preferences for Vim are stored in `dotfiles/vimrc` and `dotfiles/gvimrc`
respectively. All plugins and scripts are stored in the `dotfiles/vim`
directory.

## Adding Plugin Bundles ##

Plugins that are published on github can be installed as submodules. For
example, to install the [JavaScript bundle][jsbun], follow these steps:

    cd ~/dotfiles
    git submodule add http://github.com/pangloss/vim-javascript.git vim/bundle/vim-javascript

This will update the `.gitmodules` file by appending something like:

    [submodule "vim/bundle/vim-javascript"]
        path = vim/bundle/vim-javascript
        url = http://github.com/pangloss/vim-javascript.git
    
As well as checkout out the git repo into the
`vim/bundle/vim-javascript` directory. You can then commit these changes
as follows:

    git add .
    git ci -m "Added the javascript bundle"

### Command-t

The command-t extension require Vim with ruby support, and furthermore, the
ruby code depends on a C extension for extra speed. The usual pathogen
installation proceedure didn't work for me, but I followed these steps to make
it work:

    cd ~/dotfiles/vim/bundle/command-t/ruby/command-t
    ruby extconf.rb
    make

That did the trick.

# RUBY #

My preferences for IRB customisations are stored in `dotfiles/irbrc`. To get
the most from these, you should install the [interactive_editor][i_editor] and
[awesome_print][ap] gems, by running:

    gem install interactive_editor awesome_print




[jsbun]: http://github.com/pangloss/vim-javascript.git
[ap]: http://github.com/michaeldv/awesome_print
[i_editor]: http://github.com/jberkel/interactive_editor

#echo "loading .bashrc"
source ~/.profile

# Bash customisations to be syncronised between machines.
export PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[0m\] '

# Enable vi mode
set -o vi

# History
export HISTCONTROL=erasedups	# when adding an item to history, delete itentical commands upstream
export HISTSIZE=10000		# save 10000 items in history
shopt -s histappend		# append history to ~\.bash_history when exiting shell

# Lazy aliases
alias l='ls -l'
alias la='ls -Al'
alias ..='cd ..'
alias tree='tree -C'
alias trls='tree -C | less -R'	# -C outputs colour, -R makes less understand color
alias mode='(set -o | grep emacs.*on >/dev/null 2>&1 && echo "emacs mode" || echo "vi mode")'

# Rails aliases
alias sc='./script/console'
alias sg='./script/generate'
alias ss='./script/server'
alias sp='./script/server -e production'
alias t='rake spec'
alias ta='autotest -rails'
alias m='rake db:migrate'

# SVN aliases
alias svnadd="svn st | grep '^\?' | awk '{print $2}' | xargs svn add"
alias svnrmd="svn st | grep '^\!' | awk '{print $2}' | xargs svn rm"

# git aliases
# http://titusd.co.uk/2010/08/29/use-g-as-an-alias-for-git-without-losing-autocompletion
alias g='git'


# Reload .bashrc
alias refresh='. ~/.bashrc'

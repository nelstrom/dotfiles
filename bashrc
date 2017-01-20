source ~/.profile

# Bash customisations to be syncronised between machines.
export PS1='\[\e[1;34m\][\u@\h \W]\$\[\e[0m\] '

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

# node
alias nombom="rm -rf node_modules && npm cache clean && npm i && rm -rf bower_components && bower cache clean && bower i && rm -rf tmp"

# SVN aliases
alias svnadd="svn st | grep '^\?' | awk '{print $2}' | xargs svn add"
alias svnrmd="svn st | grep '^\!' | awk '{print $2}' | xargs svn rm"

# git aliases
# http://joeyates.info/2010/08/29/use-g-as-an-alias-for-git-without-losing-autocompletion/
alias g='git'

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  source /usr/local/etc/bash_completion.d/git-completion.bash
fi

# Vim aliases
alias rvim='mvim --remote-silent '

# Set terminal colors when launching screen
alias tmux="TERM=screen-256color-bce tmux"

# Functions
# Fuzzy cd
# Usage:
#    cdf public
# Changes to repos-public directory.
# http://dpaste.org/P59h/
function cdf() {
  cd *$1*/
}

# Reload .bashrc
alias refresh='. ~/.bashrc'

export PATH=/Applications/Postgres.app/Contents/MacOS/bin:$PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

function ps1_branch {
  b=$(git rev-parse --abbrev-ref HEAD 2>/dev/null)
  if [ -n "$b" ]; then echo " $b"; fi
}

black="\[\e[30m\]"
red="\[\e[31m\]"
green="\[\e[32m\]"
yellow="\[\e[33m\]"
blue="\[\e[34m\]"
magenta="\[\e[35m\]"
cyan="\[\e[36m\]"
white="\[\e[37m\]"
reset="\[\e[0m\]"

export PS1="${yellow}» $blue\W$magenta\$(ps1_branch)\n$yellow\$$reset "

# Add the following to your ~/.bashrc or ~/.zshrc
#
# Alternatively, copy/symlink this file and source in your shell.  See `hitch --setup-path`.

hitch() {
  command hitch "$@"
  if [[ -s "$HOME/.hitch_export_authors" ]] ; then source "$HOME/.hitch_export_authors" ; fi
}
alias unhitch='hitch -u'

# Uncomment to persist pair info between terminal instances
# hitch

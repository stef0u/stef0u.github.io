# unix alias commands
alias ls="ls -GAh"
alias la="ls -GlAh"
alias lss="ls -GlASh"
alias lst="ls -GlAth"
alias pd="pushd"
alias ppd="popd"
alias edit="vi"

# git commands
alias gp="git push"
alias ga="git add"
alias gl="git pull"
alias gc="git commit"
alias gr="git remote"
alias gs="git status"
alias gmv="git mv"

# environment variable exports
export EDITOR=/usr/bin/vi
export PS1="\w> "

#set shell command search to vi
set -o vi

#on mac OS, changes the terminal name to current working directory
export PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

# from Bob H. 

function parse_git_branch
{
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\[\1\] /'
}

FILLER='--------------------------------------------------------------------------------------------------------------------------------------------------------'
export PS1='\n\e[0m$( RET=$?; if [ $RET != 0 ] ; then printf "\e[0;1;31m$(printf "%.*s" $COLUMNS $FILLER)\n\e[0;1;31m✗ $RET \e[0m\w\n$(parse_git_branch)>> " ; else printf "\e[0;1;31m$(printf "%.*s" $COLUMNS $FILLER)\n\e[0;1;32m✓ \e[0m\w\n$(parse_git_branch)>> "; fi)'


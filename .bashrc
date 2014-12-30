alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ls='ls -hFG'
alias l='ls -lF'
alias lt='ls -ltrF'
alias ll='ls -alF'
alias lls='ls -alSrF'
alias llt='ls -altrF'

alias tarc='tar cvf'
alias tarcz='tar czvf'
alias tarx='tar xvf'
alias tarxz='tar xvzf'

alias less='less -R'

# Colorize directory listing
alias ls="ls -ph --color=auto"

# Colorize grep
if echo hello|grep --color=auto l >/dev/null 2>&1; then
  export GREP_OPTIONS="--color=auto" GREP_COLOR="1;31"
fi

# Shell
export CLICOLOR="1"
# export PS1="\[\033[33m\][ \u@\H:\[\033[32m\]\w\[\033[33m\] ]$\[\033[0m\] "
export PS1="\[\033[1;38;05;161m\]\u\[\033[0;38;05;252m\]@\[\033[1;38;05;81m\]\h\[\033[0;38;05;252m\]:\[\033[1;38;05;118m\]\w \[\033[0;38;05;252m\]$ "
export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=1;40:bd=34;40:cd=34;40:su=0;40:sg=0;40:tw=0;40:ow=0;40:"


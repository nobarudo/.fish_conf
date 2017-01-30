set -x LANG ja_JP.UTF-8

################################################################
#  alias
################################################################

alias ls 'ls --color=auto -F'
alias la 'ls -a'
alias ll 'ls -l'
alias lla 'ls -lA'
alias cp 'cp -i'
alias rm 'rm -i'
alias v 'vim'
alias gl "git log --graph --pretty=format:'%Cred%h%Creset - %s %Cgreen(%cr) %C(bold blue)<%an>%Creset%C(yellow)%d%Creset'"
alias gs "git status"
alias gd "git diff"
alias gin "git init"
alias ga "git add"
alias gc "git commit -m"

function cd
  builtin cd $argv
  ls
end

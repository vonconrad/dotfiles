# Editor stuff
export EDITOR='mate -w'
export LESSEDIT='mate -l %lm %f'
export GIT_EDITOR='mate -wl1'

# Web directories
export web=/Library/WebServer/Documents/
export interface=$web/interface
export worker=$web/worker
alias web="cd $web"
alias interface="cd $interface"
alias worker="cd $worker"

# Basic command aliases
alias m="mate"
alias ll="ls -lh"
alias lla="ls -lah"

# Rails aliases
alias c="if [ -f 'script/console' ]; then script/console; else rails console; fi;"
alias migrate="rake db:migrate"
alias rollback="rake db:rollback"

# Git aliases
current_branch() {
  echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
}

alias ga="git add"
alias gap="git add -p"
alias gb="git branch"
alias gbl="git blame --date=short"
alias gc="git commit"
alias gch="git checkout"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(magenta)%d%Creset %s %Cgreen(%cr) %C(yellow)<%an>%Creset' --abbrev-commit --date=relative"
alias gpull='git pull origin `current_branch`'
alias gpush='git push origin `current_branch`'
alias gs="git status -s -b"
alias gsh="git show"
alias gst="git stash"

alias add="gap"
alias blame="gbl"
alias branch="gb"
alias checkout="gch"
alias commit="gc"
alias log="gl"
alias p="gpush"
alias pp="gpull && gpush"
alias pull="gpull"
alias push="gpush"
alias show="gsh"
alias stash="gst"
alias status="gs"

# Config files
alias hosts="sudo vi /private/etc/hosts"
alias httpd="sudo mate /private/etc/apache2/httpd.conf"
alias vhosts="sudo vi /private/etc/apache2/extra/httpd-vhosts.conf"

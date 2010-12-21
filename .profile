# Editor stuff
export EDITOR='mate -w'
export LESSEDIT='mate -l %lm %f'
export GIT_EDITOR='mate -wl1'

# Web directories
export web=/Library/WebServer/Documents/
export interface=$web/interface
export worker=$web/worker
export projects=~/Projects
alias web="cd $web"
alias interface="cd $interface"
alias worker="cd $worker"
alias projects="cd $projects"
alias proj="projects"

# Basic command aliases
alias m="mate"
alias ll="ls -lh"
alias lla="ls -lah"
alias finder='open'
alias f='finder'

# Rails aliases
alias c="if [ -f 'script/console' ]; then script/console; else rails console; fi;"
alias migrate="rake db:migrate"
alias rollback="rake db:rollback"
alias tlog="tail -f log/development.log"

# Git aliases
current_branch() {
  echo `git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
}

alias ga="git add"
alias gap="git add -p"
alias gau="git update-index --assume-unchanged"
alias gb="git branch"
alias gbl="git blame --date=short"
alias gc="git commit"
alias gch="git checkout"
alias gd="git diff"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(magenta)%d%Creset %s %Cgreen(%cr) %C(yellow)<%an>%Creset' --abbrev-commit --date=relative"
alias gnau="git update-index --no-assume-unchanged"
alias gpull='git pull origin `current_branch`'
alias gpush='git push origin `current_branch`'
alias gr="git reset"
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
alias hosts="mate /private/etc/hosts"
alias httpd="mate /private/etc/apache2/httpd.conf"
alias vhosts="mate /private/etc/apache2/extra/httpd-vhosts.conf"

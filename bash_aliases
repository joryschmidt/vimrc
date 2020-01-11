alias ls='ls --color=auto -F'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias less="less -R "
alias mysqldump="mysqldump --user=$C9_USER --host=$IP"
alias php="php -c ~/workspace/php.ini"

alias mem="free -m"
alias disk="du -chd 1 "
alias space="df -h --total"

alias gits="git status"
alias list="ls -hAl --group-directories-first"
alias search="grep -Hirn --exclude-dir={node_modules,bower_components,.git,vendor,js,dist}"
alias envy="printenv | grep -i"
alias findpid="ps -ef | grep -i"
alias vimit="cp ~/.vimrc ~/environment/vimrc/vimrc"

alias salias="source ~/.bash_aliases"
alias sbash="source ~/.bashrc"

alias ..="cd .."

alias ws="npm run watch:sass"
alias ks="karma start --no-browsers"
alias ngserve="ng serve --host 0.0.0.0 --port 8080 --disable-host-check --proxy-config proxy.conf.json"

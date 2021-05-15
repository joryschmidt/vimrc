#System
alias ..="cd .."
alias ls="ls --color=auto -F"
alias l="ls -hAo --group-directories-first"
alias list="ls -hAl --group-directories-first"
alias mem="free -m"
alias disk="du -chd 1"
alias space="df -h --total"
alias search="grep -Hirn --exclude-dir={node_modules,bower_components,.git,vendor,js,dist}"
alias envy="printenv | grep -i"
alias findpid="ps -ef | grep -i"
alias salias="source ~/.bash_aliases"
alias sbash="source ~/.bashrc"

#Git
alias gits="git status"
alias vimit="cp ~/.vimrc ~/environment/vimrc/vimrc"

#Python
alias py="python3"
alias pip="py -m pip"
alias pyve="source ~/environment/machine_learning/.env/bin/activate"
alias pyvefreq="source ~/environment/freqtrade/.env/bin/activate"
alias pyvebook="source ~/environment/machine_learning/book/.venv/book/bin/activate"
alias pyvefin="source ~/environment/finance/.env/bin/activate"
alias pyvestack="source ~/environment/machine_learning/stack/.stackenv/bin/activate"

#c9
alias mysqldump="mysqldump --user=$C9_USER --host=$IP"
alias php="php -c ~/workspace/php.ini"

alias ws="npm run watch:sass"
alias ks="karma start --no-browsers"
alias ngserve="ng serve --host 0.0.0.0 --port 8080 --disable-host-check --proxy-config proxy.conf.json"


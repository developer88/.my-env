####### Global
ssh-add ~/.ssh/id_rsa

alias profile='vim ~/.bash_profile'
alias update_self='source ~/.bash_profile'

####### Docker
alias dk='docker'
alias dkc='docker-compose'

####### GKFX
alias 'mql4_folder'='cd /Users/andrey.eremin/Library/Application\ Support/com.gkfx.com.app_145951654016175/drive_c/Program\ Files/GKFX\ MetaTrader\ 4/MQL4 && open .'

############ .my-env related
alias 'update_my_env'="eval 'cd ~/.my-env/ && git pull && update_self && cd -'"

####### Functions
function killport() { lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9 }
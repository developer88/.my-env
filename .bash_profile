####### Global
ssh-add ~/.ssh/id_rsa

alias profile='vim ~/.bash_profile'
alias update_self='source ~/.bash_profile'

####### Docker
alias dk='docker'
alias dkc='docker-compose'

####### Ruby & Co
alias ruby_server='ruby -run -e httpd . -p 8888'
alias be='bundle exec '
alias ber='bundle exec rspec'
alias rspec_changed='bundle exec rspec $(git status | grep spec | grep "modified: " | cut -d: -f2- | tr "\n" " ")'
alias rba='rubocop -a'

# RSpec bisect
# https://relishapp.com/rspec/rspec-core/docs/command-line/bisect
function bers {
  if [ $# -ne 0 ] && [ $1 = man ] 
  then
    echo "Run RSpec with --bisect argument:
      - \$1 seed
      - \$2 path to the file (optional)
    "
    return
  fi 
  ber --bisect --seed $1 $2
}

############ .my-env related
alias 'update_my_env'="eval 'cd ~/.my-env/ && git pull && update_self && cd -'"

####### Functions
function killport() { 
  if [ $# -eq 0 ] || [ $1 = man ] 
  then
    echo "Get logs:
      - \$1 port
    "
    return
  fi   
  lsof -i TCP:$1 | grep LISTEN | awk '{print $2}' | xargs kill -9 
}

# Notify that file is loaded
echo "Loaded .my-env"

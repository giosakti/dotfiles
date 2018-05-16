# Set additional PATH
export PATH=$PATH:/opt/bin

# load fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# Google Cloud SDK Configuration
if [ -f '/opt/apps/google-cloud-sdk/path.bash.inc' ]; then source '/opt/apps/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/opt/apps/google-cloud-sdk/completion.bash.inc' ]; then source '/opt/apps/google-cloud-sdk/completion.bash.inc'; fi

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GVM Configuration
[[ -s "/Users/giosakti/.gvm/scripts/gvm" ]] && source "/Users/giosakti/.gvm/scripts/gvm"
export GOPATH="/opt/projects/golang"

# RVM Configuration
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

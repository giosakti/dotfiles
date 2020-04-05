# Set additional PATHs
if [ -d "/opt/bin" ] ; then
    export PATH="/opt/bin:$PATH"
fi

if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

# NVM Configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# GVM Configuration
export PATH="/opt/projects/golang/bin:$PATH"
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source "$HOME/.gvm/scripts/gvm"
export GOPATH="/opt/projects/golang"

# RVM Configuration
export PATH="$HOME/.rvm/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Rust Configuration
if [ -d "$HOME/.cargo/bin" ] ; then
    export PATH="$HOME/.cargo/bin:$PATH"
fi

# Aliases
alias cat='bat'
alias du='ncdu --color dark -rr -x --exclude .git --exclude node_modules'
alias fd='fdfind'
alias help='tldr'
alias ping='prettyping --nolegend'

# load fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'

# Google Cloud SDK Configuration
if [ -f '/opt/apps/google-cloud-sdk/path.bash.inc' ]; then source '/opt/apps/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/opt/apps/google-cloud-sdk/completion.bash.inc' ]; then source '/opt/apps/google-cloud-sdk/completion.bash.inc'; fi

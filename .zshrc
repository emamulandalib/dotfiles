export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="gnzh"
plugins=(git zsh-autosuggestions kubectl aws)
source $ZSH/oh-my-zsh.sh

autoload bashcompinit && bashcompinit
autoload -Uz compinit && compinit
complete -C '/usr/local/bin/aws_completer' aws

alias vim="nvim"
export EDITOR=nvim

export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"
eval "$(~/.local/bin/mise activate zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/eandalib/.lmstudio/bin"
# End of LM Studio CLI section
alias ssh='TERM=screen-256color ssh'

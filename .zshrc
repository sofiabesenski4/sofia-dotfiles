source $HOME/antigen.zsh

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen theme spaceship-prompt/spaceship-prompt

antigen apply

source /usr/local/share/chruby/chruby.sh
# eval "$(rbenv init -)"
# eval "$(fnm env)"
export warnflags=-Wno-error=implicit-function-declaration
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

autoload -Uz compinit && compinit

# #to set the array indexing to 0, as expected
# setopt KSH_ARRAYS
alias bx="bundle exec"
alias v="vim"
alias g="git"


zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

export SAVEHIST=1000
export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
setopt HIST_FIND_NO_DUPS
SPACESHIP_PROMPT_ADD_NEWLINE=false

bindkey '^[[A' history-substring-search-up                                              
bindkey '^[[B' history-substring-search-down

export EDITOR=vim

ulimit -n 10240
unsetopt BEEP
alias config='/usr/bin/git --git-dir=/Users/sofiabesenski/.cfg/ --work-tree=/Users/sofiabesenski'

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

eval "$(direnv hook zsh)"

# Maybe to help with pg crashes?
export PGGSSENCMODE="disable"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

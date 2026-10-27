export PATH=$HOME/bin:/usr/local/bin:/opt/homebrew/bin:$PATH
export PATH="/opt/homebrew/opt/node/bin:$PATH"

export ZSH="/Users/david/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

ZSH_THEME="Dracula"

DISABLE_AUTO_TITLE="true"

plugins=(gnu-utils)

alias backup="rsync -a --progress --stats"
alias cat="bat --theme Dracula"
alias ls="eza -la"
alias updatenpm="ncu -g -u"
alias updatezsh="omz update"
alias updatebrew="brew update && brew upgrade && brew autoremove && brew cleanup"
alias updateall="updatenpm && updatezsh && updatebrew"
alias shred="shred -u"

exitstatus() {
  if [[ $? == 0 ]]; then
    echo '%F{green}✔%f'
  else
    echo '%F{red}✘%f'
  fi
}

PROMPT='%F{yellow}%* %F{magenta}%n%f@%F{cyan}%M%f %1~ $(exitstatus) '

export HOMEBREW_NO_ANALYTICS=1

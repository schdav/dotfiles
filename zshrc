ZSH_THEME="dracula"

alias cat="bat"
alias ls="exa -al"
alias update="omz update"

exitstatus() {
  if [[ $? == 0 ]]; then
    echo '%F{green}✔%f'
  else
    echo '%F{red}✘%f'
  fi
}

PROMPT='%F{yellow}%* %F{magenta}%n%f@%F{cyan}%M%f %1~ $(exitstatus) '

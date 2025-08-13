export PATH="/usr/local/bin:$PATH"

# brew
export HOMEBREW_NO_AUTO_UPDATE=1

# aliases
alias dot='git --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias v="nvim"
alias l="ls -lFAh"

# plugins
eval "$(direnv hook zsh)"
eval "$(starship init zsh)"

# vi
bindkey -v

# bun completions
[ -s "/Users/fjsn/.bun/_bun" ] && source "/Users/fjsn/.bun/_bun"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# start
clear
cat << "EOF"
    |\---/|
    | ,_, |
     \_`_/-..----.
  ___/ `   ' ,""+ \  meow
 (__...'   __\    |`.___.';
   (_,...'(_,.`__)/'.....+

EOF

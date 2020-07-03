# homebrew
export PATH=~/.homebrew/bin:$PATH

# zplug
export ZPLUG_HOME=/Users/wata/.homebrew/opt/zplug
source $ZPLUG_HOME/init.zsh
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "chrissicool/zsh-256color"
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi
zplug load

# nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/Users/wata/.homebrew/opt/nvm/nvm.sh" ] && . "/Users/wata/.homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/Users/wata/.homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/Users/wata/.homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion



[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/starship.zsh ]] && source ~/.zsh/starship.zsh

autoload -U compinit && compinit

# Load Starship
eval "$(starship init zsh)"

# Load zsh-autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Load zsh-syntax-highlighting
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

 
# Load zoxide
eval "$(zoxide init --cmd cd zsh)"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Load thefuck
# eval $(thefuck --alias)
# eval $(thefuck --alias fuck)

# if [[ "$TERM_PROGRAM" == "WarpTerminal" ]]; then
#   printf '\eP$f{"hook": "SourcedRcFileForWarp", "value": { "shell": "zsh" }}\x9c'
# fi

# zstyle ':completion:*:*:make:*' tag-order 'targets'


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.local/bin:$PATH"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /Users/ahnafs/.dart-cli-completion/zsh-config.zsh ]] && . /Users/ahnafs/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]


# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ahnafs/.lmstudio/bin"
# End of LM Studio CLI section


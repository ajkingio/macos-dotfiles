# Aliases
alias ll="ls -alF"
alias brain="cd /Users/ajking/workspace/brain/ && nvim ."
alias dotfiles="cd /Users/ajking/macos-dotfiles/ && nvim ."
alias avante='nvim -c "lua vim.defer_fn(function()require(\"avante.api\").zen_mode()end, 100)"'
alias dn='nvim ~/Users/ajking/workspace/brain/Flows/Daily\ Notes/@\ Daily\ Notes\ Hub.md  -c ":ObsidianToday"'

# Set PATH
export PATH="/opt/homebrew/bin:/opt/homebrew/opt/libpq/bin:/Users/ajking/.local/bin:.local/bin:$PATH"

# Set API KEYS
#export ANTHROPIC_API_KEY=$(op item get xh4ch4ofqj54fiuak7rwmrfmje --reveal --fields label=credential)
#if [[ -f ~/.zsh_secrets ]]; then
#   eval $(op inject --in-file ~/.zsh_secrets)
#fi

# Source Files
source ~/.zsh_secrets
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export OLLAMA_API_KEY="ollama-local"

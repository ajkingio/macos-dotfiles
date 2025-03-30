# Aliases
alias ll="ls -alF"
alias brain="cd /Users/ajking/workspace/brain/ && nvim ."

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


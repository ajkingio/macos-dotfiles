# Ghostty shell integration for Zsh. Ensure this is at the top of your .zshrc!
if [ -n "${GHOSTTY_RESOURCES_DIR}" ]; then
    source "${GHOSTTY_RESOURCES_DIR}/shell-integration/zsh/ghostty-integration"
fi

# PATH helpers (avoid duplicates)
path_prepend() {
    case ":$PATH:" in
        *":$1:"*) ;;
        *) PATH="$1:$PATH" ;;
    esac
}

# Homebrew (macOS / Linux)
if [ -x /opt/homebrew/bin/brew ]; then
    path_prepend /opt/homebrew/bin
    path_prepend /opt/homebrew/opt/libpq/bin
elif [ -x /home/linuxbrew/.linuxbrew/bin/brew ]; then
    path_prepend /home/linuxbrew/.linuxbrew/bin
fi

# User bins
path_prepend "$HOME/.local/bin"

# Aliases
alias ll="ls -alF"
alias brain="cd /Users/ajking/workspace/brain/ && nvim ."
alias dotfiles="cd /Users/ajking/macos-dotfiles/ && nvim ."
alias avante='nvim -c "lua vim.defer_fn(function()require(\"avante.api\").zen_mode()end, 100)"'
alias dn='nvim ~/Users/ajking/workspace/brain/Flows/Daily\ Notes/@\ Daily\ Notes\ Hub.md  -c ":ObsidianToday"'

# Colors for ls (GNU/macOS)
if ls --color=auto >/dev/null 2>&1; then
    alias ls="ls --color=auto"
    # Catppuccin-inspired LS_COLORS
    export LS_COLORS="di=38;5;111:fi=0:ln=38;5;117:pi=38;5;218:so=38;5;218:bd=38;5;220:cd=38;5;220:ex=38;5;108:or=38;5;196:mi=38;5;196:*.tar=38;5;223:*.zip=38;5;223:*.gz=38;5;223:*.bz2=38;5;223:*.xz=38;5;223"
else
    alias ls="ls -G"
    export CLICOLOR=1
    export LSCOLORS="exfxcxdxbxegedabagacad"
fi

# Prompt (Catppuccin Mocha)
setopt PROMPT_SUBST
PROMPT='%F{#89b4fa}%n%f@%F{#b4befe}%m%f %F{#a6e3a1}%~%f $(git rev-parse --is-inside-work-tree >/dev/null 2>&1 && echo "%F{#f5c2e7}$(git rev-parse --abbrev-ref HEAD)%f ")%F{#cdd6f4}›%f '

# Set API KEYS
#export ANTHROPIC_API_KEY=$(op item get xh4ch4ofqj54fiuak7rwmrfmje --reveal --fields label=credential)
#if [[ -f ~/.zsh_secrets ]]; then
#   eval $(op inject --in-file ~/.zsh_secrets)
#fi

# Source Files
if [ -f ~/.zsh_secrets ]; then
    source ~/.zsh_secrets
fi
if [ -f /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
    source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export OLLAMA_API_KEY="ollama-local"

# Zsh Completion System (must come before completions)
#autoload -Uz compinit && compinit

# OpenClaw Completion
#source <(openclaw completion --shell zsh)

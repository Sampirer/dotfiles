#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '  # Deaktiviert für Starship
eval "$(starship init bash)"
export DMENU="rofi -dmenu"

# uv
export PATH="$HOME/.local/bin:$PATH"

# zoxide (smarter cd)
eval "$(zoxide init bash)"
alias cd='z'

# === Aider AI Assistant ===
# API Key laden (sicher)
if [[ -f ~/.config/aider/.env ]]; then
    set -a
    source ~/.config/aider/.env
    set +a
    # Stelle sicher, dass API Keys nicht in der History landen
    export HISTIGNORE="*OPENAI*:*ANTHROPIC*:*API*:$HISTIGNORE"
fi

# Aliases
alias aid='aider'
alias aid-dot='cd ~/repos/dotfiles && aider'
alias aid-arch='cd ~/repos/arch-install && aider'
alias aid-qtile='cd ~/repos/dotfiles && aider qtile/.config/qtile/config.py'
alias aid-haiku='aider --model openrouter/anthropic/claude-3-5-haiku'
alias cls='clear'

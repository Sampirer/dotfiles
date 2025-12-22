#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
export DMENU="rofi -dmenu"

# uv
export PATH="/home/carsten/.local/bin:$PATH"

# === Aider AI Assistant ===
# API Key laden
[[ -f ~/.config/aider/.env ]] && export $(grep -v '^#' ~/.config/aider/.env | xargs)

# Aliases
alias aid='aider'
alias aid-dot='cd ~/dotfiles && aider'
alias aid-arch='cd ~/arch-install && aider'
alias aid-qtile='cd ~/dotfiles && aider qtile/.config/qtile/config.py'
alias aid-haiku='aider --model openrouter/anthropic/claude-3-5-haiku'
alias cls='clear'

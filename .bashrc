# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias hyprconf='nvim ~/.config/hypr/hyprland.lua'
alias niriconf='nvim ~/.config/niri/config.kdl'
alias fastfetch='fastfetch --kitty "$(find ~/.config/fastfetch/hollowknight | shuf -n 1)" --color "#343467"'
alias cleantrash='rm -rf $HOME/.local/share/Trash/'
PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
fastfetch

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

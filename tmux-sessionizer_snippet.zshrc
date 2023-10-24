tmux

tms() {
    tmux neww tmux-sessionizer
}
zle -N tms-widget tms
bindkey '^f' tms-widget

# Auto start/attach tmux saat buka terminal

if [[-z "$TMUX"]] && [ "$TERM" != "screen" ]; then
tmux new-session -A -s main
fi

alias rr='ranger'
alias nv='nvim'
alias tma='tmux new-session -d -s'
alias tml='tmux ls'
alias tmn='tmux attach -t'
alias tmr='tmux kill-session -t'

tm() {
if [ -z "$1" ]; then
tmux ls
return
fi

tmux has-session -t "$1" 2>/dev/null

if [ $? != 0 ]; then
TMUX= tmux new-session -d -s "$1"
echo "Session '$1' berhasil dibuat di background."
fi

if [ -z "$TMUX" ]; then
tmux attach-session -t "$1"
else
tmux switch-client -t "$1"
fi
}

# Navigasi naik folder

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Tambahan biar makin sat-set

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'

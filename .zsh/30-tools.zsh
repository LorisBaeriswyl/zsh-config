eval "$(thefuck --alias)"

[[ -s "$(brew --prefix)/etc/profile.d/autojump.sh" ]] && source "$(brew --prefix)/etc/profile.d/autojump.sh"

if command -v zoxide &>/dev/null; then
  eval "$(zoxide init --cmd cd zsh)"
fi

if command -v fzf &>/dev/null; then
  eval "$(fzf --zsh)"
  alias fzf='fzf --tmux'
  alias fzfp='fzf --preview "bat --color=always {}" --preview-window "~3"'
  alias f='fzf'
  alias fp='fzfp'
  export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
    --border="rounded" --border-label="fzf" --border-label-pos="0" --preview-window="border-rounded"
    --prompt="❯ "'
fi

if command -v bat &>/dev/null; then
  alias cat='bat --paging=never'
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"
  export MANROFFOPT="-c"
  export PAGER="bat --paging=always --style=numbers,changes"
  export DELTA_PAGER="bat -p"
fi


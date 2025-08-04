# ~/.zsh/30-tools.zsh — Configuration runtime for CLI tools

# thefuck: corrects previous command
eval "$(thefuck --alias)"

# zoxide: smarter cd
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init --cmd cd zsh)"
fi

# fzf: fuzzy finder with preview
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

# bat: enhanced cat
if command -v bat &>/dev/null; then
  alias cat='bat --paging=never'
  export MANPAGER="sh -c 'col -bx | bat -l man -p'"
  export MANROFFOPT="-c"
  export PAGER="bat --paging=always --style=numbers,changes"
fi



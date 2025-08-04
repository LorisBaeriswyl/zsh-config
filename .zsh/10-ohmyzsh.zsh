export ZSH="$HOME/.oh-my-zsh"
plugins=(
  git
  git-flow
  vscode
  zsh-autosuggestions
  zsh-syntax-highlighting
  z
)
source $ZSH/oh-my-zsh.sh

eval "$(starship init zsh)"
export STARSHIP_CONFIG="$HOME/.config/starship.toml"


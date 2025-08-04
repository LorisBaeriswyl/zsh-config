# ~/.zsh/20-zinit.zsh — CLI tools handled via zinit

ZINIT_HOME="${HOME}/.zinit"
if [ ! -d "$ZINIT_HOME" ]; then
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

# fzf: fuzzy finder
zinit ice as"command" from"gh-r"
zinit light junegunn/fzf

# zoxide: smarter cd
zinit ice as"command" from"gh-r"
zinit light ajeetdsouza/zoxide

# bat: cat with syntax highlighting
zinit ice as"command" from"gh-r" mv"bat*/bat -> bat"
zinit light sharkdp/bat

# ripgrep: fast grep alternative
zinit ice as"command" from"gh-r" mv"ripgrep*/rg -> rg"
zinit light BurntSushi/ripgrep

# eza: modern ls with icons
zinit ice as"command" from"gh-r"
zinit light eza-community/eza


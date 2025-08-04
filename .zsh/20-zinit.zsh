ZINIT_HOME="${HOME}/.zinit"
if [ ! -d "$ZINIT_HOME" ]; then
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"

zinit ice as"command" from"gh-r"
zinit light junegunn/fzf

zinit ice as"command" from"gh-r"
zinit light ajeetdsouza/zoxide

zinit ice as"command" from"gh-r" mv"bat*/bat -> bat"
zinit light sharkdp/bat

zinit ice as"command" from"gh-r" mv"delta*/delta -> delta"
zinit light dandavison/delta

zinit ice as"command" from"gh-r" mv"ripgrep*/rg -> rg"
zinit light BurntSushi/ripgrep

zinit ice as"command" from"gh-r"
zinit light eza-community/eza


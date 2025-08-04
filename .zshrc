# ~/.zshrc – Entrypoint to modular config
for file in ~/.zsh/*.zsh; do
  source "$file"
done

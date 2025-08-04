export LS_COLORS="di=38;5;185:fi=38;5;250:ln=38;5;144:or=38;5;196:ex=38;5;186:*.tar=38;5;143:*.tgz=38;5;143:*.zip=38;5;143:*.jpg=38;5;183:*.jpeg=38;5;183:*.png=38;5;183:*.gif=38;5;183:*.pdf=38;5;217:*.txt=38;5;252:*.md=38;5;252:*.js=38;5;186:*.ts=38;5;186:*.json=38;5;185:*.css=38;5;144:*.html=38;5;144:*.py=38;5;186:*.sh=38;5;186:*.yml=38;5;185:*.yaml=38;5;185"

ZSH_HIGHLIGHT_STYLES[default]='fg=252'
ZSH_HIGHLIGHT_STYLES[unknown-token]='fg=196'
ZSH_HIGHLIGHT_STYLES[reserved-word]='fg=185,bold'
ZSH_HIGHLIGHT_STYLES[alias]='fg=186,bold'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=144,bold'
ZSH_HIGHLIGHT_STYLES[function]='fg=185,bold'
ZSH_HIGHLIGHT_STYLES[command]='fg=186,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=144,underline'
ZSH_HIGHLIGHT_STYLES[commandseparator]='fg=250'
ZSH_HIGHLIGHT_STYLES[hashed-command]='fg=185'
ZSH_HIGHLIGHT_STYLES[path]='fg=252,underline'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=252,underline'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=252,underline'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=144'
ZSH_HIGHLIGHT_STYLES[history-expansion]='fg=186,bold'
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]='fg=185'
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]='fg=185'
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]='fg=250'
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=183'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=183'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=186'
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]='fg=250'
ZSH_HIGHLIGHT_STYLES[assign]='fg=144'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=238,bold'
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

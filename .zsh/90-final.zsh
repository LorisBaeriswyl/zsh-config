# Docker completions
fpath=(/Users/lorisbaeriswyl/.docker/completions $fpath)

# PNPM
export PNPM_HOME="/Users/lorisbaeriswyl/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


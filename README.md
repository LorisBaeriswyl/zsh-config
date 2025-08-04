# Zsh Config (modular, macOS-friendly)

This repository contains a **modular, modern, and clean zsh configuration** using [`Oh My Zsh`](https://ohmyz.sh/) and [`zinit`](https://github.com/zdharma-continuum/zinit). It is optimized for **macOS**, and integrates a curated set of tools for better CLI productivity.

---

## 📦 Installation

1. **Clone the repository**:

```bash
git clone https://github.com/<your-username>/zsh-config.git ~/.zsh-config
```

2. **Link the main config file**:

```bash
ln -sf ~/.zsh-config/zshrc ~/.zshrc
```

3. **Restart your terminal** (or `source ~/.zshrc`)

> \[!NOTE]
> This setup assumes that tools like `fzf`, `bat`, `ripgrep`, etc. will be automatically handled and updated via `zinit`. Nerd Font is required.

---

## 🔧 Structure

```text
.zsh/
├── 00-env.zsh           # PATHs and environment
├── 10-ohmyzsh.zsh       # Plugin manager and theme
├── 20-zinit.zsh         # CLI tools via zinit
├── 30-tools.zsh         # Configs for fzf, bat, zoxide...
├── 40-colors.zsh        # LS_COLORS, syntax highlighting
├── 50-aliases.zsh       # Your aliases (sources .zsh_aliases)
├── 60-completion.zsh    # compinit, zstyle
├── 90-final.zsh         # Misc (Docker, pnpm...)
zshrc                    # Entrypoint: loads all above
.zsh_aliases             # Your custom aliases
```

---

## 📦 Tools

### zsh plugins

Managed via `Oh My Zsh`:

* `zsh-users/zsh-syntax-highlighting`
* `zsh-users/zsh-autosuggestions`

Extra snippets (optional):

* `OMZP::git`
* `OMZP::sudo`
* `OMZP::command-not-found`

---

### [starship](https://starship.rs/)

> Fast, cross-shell prompt with icons and customization.

![starship](https://raw.githubusercontent.com/starship/starship/master/media/demo.gif)

> \[!IMPORTANT]
> Requires a [Nerd Font](https://www.nerdfonts.com/) to render icons properly.

---

### [fzf](https://github.com/junegunn/fzf)

> A fuzzy finder for the command line.

![fzf](https://raw.githubusercontent.com/junegunn/i/master/fzf-preview.png)

Includes `--tmux` integration, file preview with `bat`, and custom keybindings.

---

### [zoxide](https://github.com/ajeetdsouza/zoxide)

> Smarter `cd` command. Tracks your most used folders.

![zoxide](https://github.com/ajeetdsouza/zoxide/raw/main/contrib/tutorial.webp)

---

### [eza](https://github.com/eza-community/eza)

> Modern alternative to `ls`. Supports icons, git, tree view.

![eza](https://github.com/eza-community/eza/raw/main/docs/images/screenshots.png)

Aliases:

```zsh
alias ls='eza --icons --group-directories-first'
alias la='ls -a'
alias ll='ls -l'
alias lt='ls --tree'
alias lg='ls --git'
```

---

### [ripgrep](https://github.com/BurntSushi/ripgrep)

> Fast recursive search, better than `grep`.

![rg](https://burntsushi.net/stuff/ripgrep1.png)

---

### [bat](https://github.com/sharkdp/bat)

> `cat` clone with syntax highlighting and git integration.

![bat](https://camo.githubusercontent.com/a9789c5200bdb0a22602643d7bf85f0f424ddd4259e763abc865609010c5e228/68747470733a2f2f696d6775722e636f6d2f724773646e44652e706e67)

---

### [thefuck](https://github.com/nvbn/thefuck)

> `thefuck` is a command line tool that corrects previous console commands. It analyzes the last failed command and suggests a fix. Just type `fuck` to apply it.

Example:

```sh
$ sl
zsh: command not found: sl
$ fuck
Did you mean: sudo ls [enter/↑/↓/ctrl+c]
```

In this configuration, `thefuck` is automatically initialized with:

```sh
eval "$(thefuck --alias)"
```

> \[!NOTE]
> To work correctly, `thefuck` needs to be installed via Homebrew or pip:
>
> ```sh
> brew install thefuck
> # or
> pip install thefuck
> ```

---

## 🔄 Update everything

To update all binaries installed by Zinit:

```sh
zinit update --parallel
```

---

## ✨ Final tips

* Use `zprof` to analyze startup performance
* Pair with a terminal like iTerm2, Warp, or Alacritty
* Keep your Nerd Font up to date
* Keep this repo in sync with `git push` after every change

> \[!TIP]
> You can back this repo up on GitHub and restore it on any new machine in seconds.

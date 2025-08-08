# Zsh Config (modular, macOS-friendly)

This repository contains a **modular, modern, and clean zsh configuration** using [`Oh My Zsh`](https://ohmyz.sh/) and [`zinit`](https://github.com/zdharma-continuum/zinit). It is optimized for **macOS**, and integrates a curated set of tools for better CLI productivity.

---

## ✅ Prerequisites

This configuration relies on **Zsh 5.8** or later and requires a few external tools:

* [Oh My Zsh](https://ohmyz.sh/) – the plugin manager is installed by this repository if missing.
* [zinit](https://github.com/zdharma-continuum/zinit) – used to install CLI tools from GitHub; it is automatically cloned.
* [Starship](https://starship.rs) – the minimalist, cross‑shell prompt that replaces the default prompt.
* **Nerd Font** – a patched font is required to display icons.

On macOS, these dependencies can be installed with [Homebrew](https://brew.sh):

```bash
brew install starship fzf ripgrep bat eza zoxide thefuck lazygit
```

On Linux, use your distribution’s package manager (for example with apt):

```bash
sudo apt install starship fzf ripgrep bat eza zoxide thefuck lazygit
```

zinit will also install binaries for these tools if none are found.

## 📦 Installation

1. **Clone the repository**:

```bash
git clone https://github.com/lorisbaeriswyl/zsh-config.git ~/.zsh-config
```

2. **Link the main config file**:

```bash
ln -sf ~/.zsh-config/zshrc ~/.zshrc
```

3. **Restart your terminal** (or `source ~/.zshrc`)

> \[!NOTE]
> This setup assumes that tools like `fzf`, `bat`, `ripgrep`, etc. will be automatically handled and updated via `zinit`. Nerd Font is required.

---
## 🌐 Portability

Although this configuration is optimised for **macOS**, it remains compatible with most Linux distributions. macOS‑specific paths (for example `/opt/homebrew`) are defined in `00-env.zsh`; adjust them if necessary. Absolute paths (Docker completions, PNPM) have been replaced with references to `$HOME` to improve portability.

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
Fast, cross‑shell prompt with icons and extensive customisation.  
To customise the appearance of your prompt, create a `~/.config/starship.toml` file and reference it via the `STARSHIP_CONFIG` variable defined in the configuration. See the [official documentation](https://starship.rs/config) for examples.

---

### [fzf](https://github.com/junegunn/fzf)
A fuzzy finder for the command line.  
In this configuration it is initialised automatically with `fzf --zsh`, provides `tmux` integration, file preview via `bat` and aliases (`f`, `fp`).

---

### [zoxide](https://github.com/ajeetdsouza/zoxide)
A smarter alternative to `cd` that remembers frequently used directories and lets you jump to them quickly (`cd dir` becomes `z dir`).

---

### [eza](https://github.com/eza-community/eza)
A modern replacement for `ls` (icons, Git information, tree view).  
The aliases `ls`, `ll`, `la`, `lt` and `lsg` redirect to convenient `eza` options; they are defined in `~/.zsh_aliases`.

---

### [ripgrep](https://github.com/BurntSushi/ripgrep)
A very fast recursive search tool, better than `grep`.

---

### [bat](https://github.com/sharkdp/bat)
Enhanced `cat` clone that shows syntax highlighting, line numbers and Git integration.

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

### [lazygit](https://github.com/jesseduffield/lazygit)

> Terminal UI for Git. While not directly tied to Zsh, `lazygit` complements this configuration well as a fast and intuitive interface for managing Git repositories.

To install:

```sh
brew install lazygit
```

Optional alias:

```zsh
alias lg='lazygit'
```

> \[!NOTE]
> The config file can be override. Run `lazygit --print-config-dir` to find your actual path.

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

## 📑 License

This repository is released under the MIT license. See [LICENSE](LICENSE) for details.

# dotfiles

A collection of personal configurations and tool defaults.

## Setup

Linux / macOS / WSL

```bash
sh -c "$(curl -fsLS https://get.chezmoi.io)" -- init --apply reanimatedmanx
```

Windows (Powershell)

```powershell
iex "&{$(irm 'https://get.chezmoi.io/ps1')} init --apply reanimatedmanx"
```

## TODO

```bash
#   export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"
# - Add fzf for fuzzy file finding: https://github.com/junegunn/fzf
# - Add asdf or nvm for managing language versions
# - Add starship for a cross-shell prompt
# - Add direnv and homemanager cfg for project-specific environment variables
# - Add docker and kubectl completions
```

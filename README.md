# mac-dotfiles

This repo is based off Kun Chen's setup as seen in [this](https://www.youtube.com/watch?v=5N-okeDdIuIA) video, however I am not using NIX. I feel I don't need to learn a new system to install packages. I can use one that I already know like Ansible. I am also using The Primeagen setup for some NVim stuff.

Kun's setup basically uses wezterm as the terminal because it is cross platform. He uses Herdr as a replacement for Tmux because it is Agent aware. He customizes his prompt with starship and he uses NeoVim to edit files. So basically start Herdr then split the screen with one running claude code and the other with NVim.

## How to get a new Mac running.  

Run `curl -s https://raw.githubusercontent.com/codysprojects/mac-dotfiles/refs/heads/main/bootstrap.sh | Bash`

## Update packages
Modify `default.config.yaml` and run playbook with tags with what you installed, ie a packages, cask, or tap.  This can be done by using the tags `ansible-playbook --tag homebrew_packages main.yaml` for example. 

For machine-specific overrides that shouldn't be committed (e.g. a work laptop that needs one extra cask), drop them in `config.local.yaml` at the repo root - it's gitignored and gets loaded automatically if present.

## Explanation of important files
- `bootstrap.sh` - run this once on a fresh Mac.
- `main.yaml` - the Ansible playbook entrypoint.
- `default.config.yaml` - the list of what to install and symlink.
- `config.local.yaml` - optional, gitignored, machine-local overrides.
- `tasks/*.yml` - the actual Ansible tasks, one file per concern.
- `config/` - mirrors `~/.config`; each subdirectory here gets symlinked into `~/.config`.
- `home/` - individual files that get symlinked directly into `$HOME`.
- `config/nvim/init.lua` - points to LazyVim and NVim settings.
- `config/nvim/lua/vim_config.lua` - Vim settings for NVim.
- `config/nvim/lua/config/lazy.lua` - LazyVim config.
- `config/nvim/lua/config/keymaps.lua` - LazyVim keymaps.



## Re-running later

Once it's cloned, you don't need `bootstrap.sh` again - just:

```sh
cd ~/git/dotfiles
ansible-playbook main.yaml
```

This picks up any new packages, casks, or symlinks you've added to `default.config.yaml` or `config/` since the last run.

## To-Do
- Add symlinks/config for each AI agent that gets installed (Claude Code, Codex, etc).

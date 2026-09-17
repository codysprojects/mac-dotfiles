#!/usr/bin/env bash
# One-shot bootstrap for a fresh Mac. Installs just enough (Homebrew, git,
# ansible) to pull down the dotfiles repo and hand off to Ansible, which does
# everything else. Safe to re-run.
set -euo pipefail

DOTFILES_REPO="${DOTFILES_REPO:-git@github.com:codysprojects/mac-dotfiles.git}"
DOTFILES_DIR="${DOTFILES_DIR:-$HOME/git/dotfiles}"

if ! command -v brew >/dev/null 2>&1; then
  echo "==> Installing Homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Make brew available in this shell whether it installed to /opt/homebrew
# (Apple Silicon) or /usr/local (Intel).
if [ -x /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -x /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

echo "==> Installing git and ansible"
brew install git ansible

echo "==> Installing required Ansible collections"
ansible-galaxy collection install community.general

mkdir -p "$(dirname "$DOTFILES_DIR")"
if [ -d "$DOTFILES_DIR/.git" ]; then
  echo "==> dotfiles repo already present at $DOTFILES_DIR, pulling latest"
  git -C "$DOTFILES_DIR" pull --ff-only
else
  echo "==> Cloning dotfiles repo to $DOTFILES_DIR"
  git clone "$DOTFILES_REPO" "$DOTFILES_DIR"
fi

echo "==> Running Ansible playbook"
cd "$DOTFILES_DIR"
ansible-playbook main.yaml

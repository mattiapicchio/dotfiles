# DOTFILES

## Basic Usage

Install Stow: `sudo apt install stow` or `brew install stow`

Navigate to dotfiles directory: `cd .../.dotfiles`

Stow all packages: `stow */`

Stow a specific package: `stow packagename`

## Common Commands

Install (stow): `stow packagename`

Uninstall (unstow): `stow -D packagename`

Restow (update): `stow -R packagename`

Simulate (dry run): `stow -n packagename`

Verbose output: `stow -v packagename`

Use `stow -adopt` to adopt existing files into your stow package

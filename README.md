Ansible playbook/roles for setup of workstation

# Install Ansible and other dependencies

All OSes requires an ssh key setup and working with github

## Partial install

Add `--skip-tags` with any of the following tags to skip parts of the setup:

 * `asfd` Don't install asdf plugins
 * `python` Don't install python versions
 * `elixir` Don't install elixir utils
 * `extra` Only install base packages

## macos

 * Change computer name (Settings -> Sharing)
 * Generate ssh key and upload to github `ssh-keygen -t ed25519`
 * Install homebrew and ansible
 * Run `ansible-playbook install.yml` to install and configure the system (Optionally with `--skip-tags`)
 * (Optional) Run `ansible-playbook macos-security.yaml` to activate macos security features
 * Configure DNS over HTTPS: https://paulmillr.com/posts/encrypted-dns/

## Ubuntu (20.04 or later)

Generate ssh key and upload to github

```
sudo apt install ansible

ansible-playbook install.yml
```

## Arch Linux

Generate ssh key and upload to github

```
pacman -S ansible

ansible-playbook install.yml
```

# Manual steps

## Carbon Copy Cloner

Install and setup appropriate tasks.

## Iterm2

Import `iterm.json`

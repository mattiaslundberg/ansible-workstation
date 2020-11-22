Ansible playbook/roles for setup of workstation

# Install Ansible and other dependencies

All OSes requires an ssh key setup and working with github

## Partial install

Add `--skip-tags` with any of the following tags to skip parts of the setup:

 * `asfd` Don't install asdf plugins

## macos

 * Generate ssh key and upload to github
 * Install homebrew and ansible
 * Run `ansible-playbook install.yml`

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

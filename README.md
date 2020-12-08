Ansible playbook/roles for setup of workstation

# Install Ansible and other dependencies

All OSes requires an ssh key setup and working with github

## Partial install

Add `--skip-tags` with any of the following tags to skip parts of the setup:

 * `asfd` Don't install asdf plugins
 * `python` Don't install python versions
 * `elixir` Don't install elixir utils
 * `extra` Only install base packages
 * `security` Don't setup macos security features

## macos

 * Change computer name (Settings -> Sharing)
 * Generate ssh key and upload to github `ssh-keygen -t ed25519`
 * Install homebrew and ansible
 * Create development home: `mkdir -p ~/Development/mattiaslundberg`
 * Clone repo: `git clone git@github.com:mattiaslundberg/ansible-workstation.git ~/Development/mattiaslundberg/ansible-workstation`
 * Copy `settings.example.yaml` to `settings.yaml` and edit with appropriate settings
 * Run `ansible-playbook install.yml` to install and configure the system (Optionally with `--skip-tags`)
 * (Optional) Run `ansible-playbook hosts.yml` to add blocklist in hosts file
 * Configure DNS over HTTPS: https://paulmillr.com/posts/encrypted-dns/

## Ubuntu (20.04 or later)

 * Generate ssh key and upload to github
 * Copy `settings.example.yaml` to `settings.yaml` and edit with appropriate settings

```
sudo apt install ansible

ansible-playbook install.yml
```

 * (Optional) Run `ansible-playbook hosts.yml` to add blocklist in hosts file

# Manual steps

## Carbon Copy Cloner

Install and setup appropriate tasks.

## Iterm2

Import `iterm.json`

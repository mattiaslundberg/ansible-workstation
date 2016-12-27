Ansible playbook/roles for setup of workstation


# Install Ansible and other dependencies
## macos
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
```

## Arch Linux
```
pacman -S ansible

```

# Run
```
ansible-playbook -i inventory site.yml
```

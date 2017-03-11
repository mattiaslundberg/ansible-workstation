Ansible playbook/roles for setup of workstation


# Install Ansible and other dependencies

All OSes requires an ssh key setup and working with github


## macos
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install ansible python
```

## Arch Linux
```
pacman -S ansible

```

# Run
```
ansible-playbook install.yml
```

# Manual steps

## Karabiner (and system)
Must set caps-lock to no-action in system settings

Enable the following items:

1. Command_R to Option_R (For internal keyboard only)
2. Option_R to Control_R (For internal keyboard only)
3. Caps-lock to backspace_or_delete

## BetterTouchTool
Add the following keyboard rules
1. C-A-l lock screen
2. C-A-=> Maximize window right
3. C-A-<= Maximize window left
4. C-A-Up Maximize window

Ansible playbook/roles for setup of workstation


# Install Ansible and other dependencies

All OSes requires an ssh key setup and working with github


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
ansible-playbook -i inventory site.yml -K
```

# Manual steps

## Get ctrl-h working in iterm2
Edit -> Preferences -> Keys
Press +
Press Ctrl+h as Keyboard Shortcut
Choose Send Escape Sequence as Action
Type [104;5u for Esc+

## Seil (and system)
Must set caps-lock to no-action in system settings
Start seil and map caps-lock to delete

## Karabiner
Enable the following items:
1. Don't remap external keyboards
2. Command_R to Option_R
3. Option_R to Control_R

## BetterTouchTool
Add the following keyboard rules
1. C-A-l lock screen
2. C-Cmd-=> Maximize window right
3. C-Cmd-<= Maximize window left
4. C-Cmd-Up Maximize window

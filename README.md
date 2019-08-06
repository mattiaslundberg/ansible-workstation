Ansible playbook/roles for setup of workstation


# Install Ansible and other dependencies

All OSes requires an ssh key setup and working with github


## macos
```
sh setupmac.sh
```

## Arch Linux
```
pacman -S ansible

ansible-playbook install.yml
```

# Manual steps

## Karabiner (and system)
Must set caps-lock to no-action in system settings

Enable the following items:

1. Command_R to Option_R (For internal keyboard only)
2. Option_R to Control_R (For internal keyboard only)
3. Caps-lock to backspace_or_delete
4. Left_Command to Left_Option (Extrenal non-mac keyboards)
5. Left_Option to Left_Command (Extrenal non-mac keyboards)

## BetterTouchTool
Add the following keyboard rules

1. C-A-l lock screen
2. C-A-=> Maximize window right
3. C-A-<= Maximize window left
4. C-A-Up Maximize window

## Carbon Copy Cloner

Install and setup appropriate tasks.

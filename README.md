Ansible playbook/roles for setup of workstation

Requires ansible to be installed:

# macos
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install ansible
```

# Run
```
ansible-playbook -i inventory site.yml
```

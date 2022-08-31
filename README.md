# autorice 🍚
playbook(s) for desktop autosetup

## Prerequisites
You have to have ansible installed
```bash
sudo zypper install ansible
```
Also you have to intall community.general collection
```bash
ansible-galaxy collection install community.general
```

## How to run
1. Change variables in main.yml file according to your setup.
1. Run playbook.

```bash
ansible-playbook main.yml
```


# ansible-playbooks
General playbooks that I find helpful to automate various tasks.

## Docker installation on Debian

### Variable Parameters
- `arch` - architecture of the host
  - use `dpkg --print-architecture` on host to print the architecture value.
- `dist` - distribution version of the OS 
- `codename` - build repository

### Example installing Docker on Raspberry Pi

```
ansible-playbook -i inventory.yml docker_install_debian.yml --extra-vars "arch=armhf dist=buster codename=stable"
```
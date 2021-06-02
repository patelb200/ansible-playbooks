# ansible-playbooks
General playbooks that I find helpful to automate various tasks.

### List of Playbooks
- `docker_install_debian` - automate installing docker on raspberry pi or debian os using ansible tasks.

## Docker Installation on Debian

### Variable Parameters
- `arch` - architecture of the host
  - use `dpkg --print-architecture` on host to print the architecture value.
- `dist` - distribution version of the OS 
- `codename` - build repository

### Example installing Docker on Raspberry Pi

```
ansible-playbook -i inventory.yml docker_install_debian.yml --extra-vars "arch=armhf dist=buster codename=stable"
```

## MySQL Database Dump

### Variable Parameters
- `database` - name of the database on the mysql server
- `fileName` - save as name
- `destination` - location on local machine to move the file to

### Example creating mysql database dump
```
ansible-playbook  -i inventory.yml mysql_database_dump.yml --extra-vars "database=dbname fileName=bak_2021-06-01 destination=/home/patelb200/"
```
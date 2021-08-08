# salt4unraid
A docker container to run salt on unraid. The container is the master and a minion (named "unraid").

# Usage

Before using this Container you should learn something about [salt](https://saltproject.io). This container ist a salt-master and salt-minion in a container. It is definitly not running on the unraid-server it self, so you can't control the shares etc. directly with it. But monitoring and controlling the virtual machines and container is easy with it.

## Getting started

First you have to accept the key from the unraid minion via the gui (user: salt_api password: salt) or the container commandline. Then you can  monitor vms with e.g. `salt unraid virt.list_domains`

### docker.info
`salt unraid docker.info`
![sample 1](https://github.com/lubeda/salt4unraid/raw/master/images/docker.info.png)

### virt.capabilities
`salt unraid virt.capabilities`
![sample 2](https://github.com/lubeda/salt4unraid/raw/master/images/virt.capabilities.png)

## Getting further

For more advanced salt features you might map more volumes into the container. E.g. `/mnt/user/domains/` is needed for commands like `virt.vm_info`
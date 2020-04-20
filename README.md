# This is Ansible for [RedMail](https://www.iredmail.org)

## Vagrantfile config

This you need to do:
First:
`git clone https://github.com/krlex/RedMail.git`
`cd RedMail/`
Second:
You need to uncomment which Linux/FreeBSD OS you want, for exmaple:
`vim OS.yml`

 ```
  - name: debian
    box: debian/buster64
    box_ip: 10.1.10.10
    memory: 2048
    cpu: 2
    provision: ./script.sh

    #  - name: fedora
    #    box: krlex/fedora31
    #    box_ip: 10.1.10.10
    #    memory: 2048
    #    cpu: 2
    #    provision: ./script.sh
    #
    #  - name: freebsd
    #    box: krlex/freebsd-12.1.2-zfs
    #    box_ip: 10.1.10.10
    #    memory: 2048
    #    cpu: 2
    #    provision: ./script.sh
 ```
Third:
`vagrant up`
`vagrant ssh`
`cd mail`
`bash iRedMail.sh`

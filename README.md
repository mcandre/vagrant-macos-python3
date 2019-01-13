# vagrant-macos-python3: a macOS Vagrant box with Python 3 + pip

# VAGRANT CLOUD

https://app.vagrantup.com/mcandre/boxes/vagrant-macos-python3

# EXAMPLE

```console
$ vagrant up
$ vagrant ssh -c "cd /vagrant && python3 hello.py"
/usr/local/bin/bashate
```

# REQUIREMENTS

* [Vagrant](https://www.vagrantup.com)
* [VirtualBox](https://www.virtualbox.org/)

## Recommended

* [vagrant-rsync-back](https://github.com/smerrill/vagrant-rsync-back) assists in copying artifacts from the guest to the host

# EXPORT

```console
$ make vagrant-macos-python3.box
```

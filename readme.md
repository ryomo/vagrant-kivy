## What is this ?

A Vagrantfile for Kivy, and a bash script to run a kivy python script via ssh. 


## Summary

### OS

Ubuntu 18.04

### Installed Apps

* Kivy
* Lubuntu Desktop
* Python 3
* pip3


## Require

### X11

`run_on_vagrant.sh` uses X11 forwarding.

If your host OS is Linux with the desktop environment, nothing to do.
If not, you may need to google "X11 forwarding windows".


### vagrant-vbguest

```bash
vagrant plugin install vagrant-vbguest
```


## Usage

```bash
vagrant up
./run_on_vagrant.sh app/hello.py
```

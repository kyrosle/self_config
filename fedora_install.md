# Fredora reinstall

## pre settings

if teh gnome-software downloading catelog is struck:

```
sudo killall gnome-software
sudo rm -rf .cache/gnome-software/
```

then restart the gnome-software application

https://itsfoss.com/things-to-do-after-installing-fedora/

- Configure DNF for Faster Downloads of Packages

- terminal ctrl-c -v

- accessibility - typing speed

## daily application install

- chrome.rpm

- install clash: https://blog.zzsqwq.cn/posts/how-to-use-clash-on-linux/

```
setenforce 0

or

In /etc/sysconfig/selinux set SELINUX=permissive
```

- install rust and nushell

```
sudo dnf groupinstall "Development Tools"
sudo dnf install cmake
```

- keyd

- vscode

- gnome-shell-extensions

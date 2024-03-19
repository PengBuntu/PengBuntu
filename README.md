# PengBuntu

Here Are The Commands For Building PengBuntu When It Gets Created With Cubic. This Process Requires (Minimal) User Interaction.

PengBuntu ISO Files Can Be Found In The Releases Tab.

## 1. Install New Software

Firstly, We Will Install Some New Software For PengBuntu, Including Cinnamon & LightDM. 

```console
root@cubic:~$ apt update
root@cubic:~$ add-apt-repository universe

root@cubic:~$ apt install lightdm -y
root@cubic:~$ apt install cinnamon -y
root@cubic:~$ update-alternatives --config x-session-manager
```

## 2. Ubiquity Modifications

Afterwards, We Modify The Ubiquity SlideShow.

```console
root@cubic:~$ cd /usr/share/ubiquity-slideshow/slides
root@cubic:~$ echo Now, Upload The Required Files From The Ubiquity-Slides Repo!
Now, Upload The Required Files From The Ubiquity-Slides Repo!
```

## 3. Plymouth Modifications

Next, We Modify The Plymouth Boot-Up/Shutdown Animations.

```console
root@cubic:~$ cd ~
root@cubic:~$ echo Now, Upload The Cantarell Font! The Link Be Found In The Assets Repo!
Now, Upload The Cantarell Font! The Link Be Found In The Assets Repo!
root@cubic:~$ mv Cantarell-Regular.ttf /usr/share/fonts
root@cubic:~$ ls -la /boot
root@cubic:~$ apt reinstall linux-headers-generic -y
root@cubic:~$ apt reinstall linux-image-generic -y
root@cubic:~$ ls -la /boot
root@cubic:~$ update-alternatives --display default.plymouth
root@cubic:~$ cd /usr/share/plymouth/themes
root@cubic:~$ mkdir logo-slider
root@cubic:~$ cd logo-slider
root@cubic:~$ echo Now, Upload The Plymouth Theme Files Found In The Assets Repo!
Now, Upload The Plymouth Theme Files Found In The Assets Repo!
root@cubic:~$ update-alternatives --install "/usr/share/plymouth/themes/default.plymouth" "default.plymouth" "/usr/share/plymouth/themes/logo-slider/logo-slider.plymouth" 160
root@cubic:~$ update-alternatives --display default.plymouth
root@cubic:~$ update-initramfs -uk all
root@cubic:~$ echo Make Sure To Use The New, Modified Kernel When Crafting Your ISO!
Make Sure To Use The New, Modified Kernel When Crafting Your ISO!
```

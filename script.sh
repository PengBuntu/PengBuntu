# Update System And Add Required APT Repositories
apt update
apt upgrade -y
apt update
add-apt-repository universe

# Install Cinnamon DE
apt install cinnamon
update-alternatives --config x-session-manager

# Install LightDM
apt install lightdm

# Fix Ubiquity
cd /usr/share/ubiquity-slideshow/slides
# (Upload/Replace Slides With Those From Ubiquity-Slides Repo)

# Fix Plymouth Screens
# (Upload Cantarell Font)
mv Cantarell-Regular.ttf /usr/share/fonts
ls -la /boot
apt -y install --reinstall linux-headers-generic
apt -y install --reinstall linux-image-generic
ls -la /boot
update-alternatives --display default.plymouth
cd /usr/share/plymouth/themes
mkdir logo-slider
cd logo-slider
# (Upload Plymouth Theme Files)
update-alternatives --install "/usr/share/plymouth/themes/default.plymouth" "default.plymouth" "/usr/share/plymouth/themes/logo-slider/logo-slider.plymouth" 160
update-alternatives --display default.plymouth
update-initramfs -uk all
# (Make Sure Cubic Uses This Modified Kernel!)

# Fix Default Background (Files From Assets Repo Get Uploaded Here!)

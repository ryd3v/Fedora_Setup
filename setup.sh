
sudo dnf update -y

sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y

sudo dnf groupupdate core -y

sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y

sudo dnf install lame\* --exclude=lame-devel -y

sudo dnf group upgrade --with-optional Multimedia --allowerasing -y

sudo dnf config-manager --set-enabled fedora-cisco-openh264

sudo dnf install gstreamer1-plugin-openh264 mozilla-openh264 -y

sudo dnf install seahorse -y

sudo dnf install gnome-themes-extra -y

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

nvm install --lts

sudo dnf install yarnpkg -y
sudo dnf install openvpn -y
sudo tee -a /etc/sysctl.d/99-swappiness.conf > /dev/null  <<EOF
vm.swappiness=1
EOF

sudo dnf upgrade --best --allowerasing --refresh -y

sudo dnf install -y calibre exfat-utils ffmpeg fuse-exfat git gvfs-fuse gvfs-mtp gvfs-nfs gvfs-smb htop lm_sensors mpv p7zip p7zip-plugins transmission adobe-source-code-pro-fonts
sudo dnf install audacious.x86_64 audacious-plugins.x86_64 -y

sudo dnf install rpm-build -y

sudo dnf group install --with-optional virtualization -y

sudo systemctl start libvirtd
sudo systemctl enable libvirtd

sudo dnf install -y gnome-tweaks
sudo dnf install -y google-roboto-fonts.noarch
sudo dnf install -y jetbrains-mono-fonts-all.noarch

sudo dnf install -y portaudio.x86_64 portaudio-devel.x86_64
sudo dnf install -y audacious-plugins-freeworld-aac.x86_64 audacious-plugins-ffaudio.x86_64 audacious-plugins.x86_64
sudo dnf install -y python3-devel

sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf update @multimedia --setopt="install_weak_deps=False" --exclude="PackageKit-gstreamer-plugin" -y
sudo dnf install -y intel-media-driver
sudo dnf swap -y mesa-va-drivers mesa-va-drivers-freeworld
sudo dnf swap -y mesa-vdpau-drivers mesa-vdpau-drivers-freeworld
sudo dnf install -y rpmfusion-free-release-tainted
sudo dnf install -y libdvdcss
sudo dnf install -y rpmfusion-nonfree-release-tainted
sudo dnf --repo=rpmfusion-nonfree-tainted install "*-firmware" -y
sudo dnf install -y dc3dd

# Flatpak
flatpak install flathub fr.handbrake.ghb -y
flatpak install flathub org.remmina.Remmina -y
sudo flatpak install flathub com.mattjakeman.ExtensionManager -y
sudo flatpak install flathub org.gnome.Firmware -y
sudo flatpak install flathub com.discordapp.Discord -y 
sudo flatpak install flathub me.timschneeberger.jdsp4linux -y

echo "Please Reboot"
exit 0

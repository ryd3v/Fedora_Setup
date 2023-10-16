gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
sudo dnf update
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf groupupdate core -y
sudo dnf install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel -y
sudo dnf install lame\* --exclude=lame-devel -y
sudo dnf group upgrade --with-optional Multimedia --allowerasing -y
flatpak install flathub org.gnome.Extensions -y
flatpak install flathub com.spotify.Client -y
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf install gstreamer1-plugin-openh264 mozilla-openh264 -y
sudo dnf install seahorse -y
sudo dnf install vlc -y
flatpak install flathub com.authy.Authy -y
flatpak install flathub org.mozilla.Thunderbird -y
sudo dnf install discord -y
flatpak install flathub fr.handbrake.ghb -y
flatpak install flathub org.remmina.Remmina -y
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm install --lts
sudo dnf install yarnpkg -y
sudo dnf install openvpn -y

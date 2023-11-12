# Fedora Setup Script README

## Overview
This script automates the setup and configuration of a Fedora Linux system. It includes a series of commands to update the system, install essential and additional packages, configure system settings, and set up a custom Gnome GTK theme. The script is intended to streamline the initial configuration process for Fedora users, focusing on multimedia, development tools, and user interface enhancements.

## Contents
1. **System Update and Package Installation**: Updates the system and installs core packages from both official Fedora repositories and RPM Fusion.
2. **Multimedia Support**: Installs various GStreamer plugins and codecs for enhanced multimedia support.
3. **Flatpak Applications**: Installs popular applications such as Spotify, Authy, Thunderbird, and others via Flatpak.
4. **Development Tools**: Installs Node Version Manager (NVM), Node.js LTS version, and yarn package manager.
5. **System Tweaks**: Applies system tweaks like reducing `vm.swappiness`.
6. **Fonts and Utilities Installation**: Installs various fonts, utilities like Git, gnome-tweaks, htop, and more.
7. **Virtualization Support**: Installs virtualization packages and enables the `libvirtd` service.
8. **Gnome GTK Theme Installation**: Clones and installs the WhiteSur GTK theme for Gnome.
9. **User-Specific Configuration**: Executes a `gsettings` command to set specific Gnome settings, particularly enabling the experimental feature 'scale-monitor-framebuffer'.

## Usage
To use this script:
1. Ensure you are running Fedora Linux.
2. Run the script with `sudo` to ensure it has the necessary permissions to install packages and apply system-wide configurations.
3. The script will prompt for a reboot upon completion.

## Important Notes
- This script should be used on a fresh Fedora installation to avoid conflicts with existing configurations.
- Always review and test the script in a controlled environment before executing it on your main system to ensure compatibility with your specific setup.
- The script assumes an internet connection for downloading packages and repositories.

## License

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

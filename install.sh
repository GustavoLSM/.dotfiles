#!/bin/bash
sudo pacman -S stow otf-comicshanns-nerd otf-geist-mono-nerd ttf-font-awesome noto-fonts-extra noto-fonts-emoji

sudo pacman -S hyprland hyprpicker hyprpaper waybar wofi qalculate-gtk wl-clipboard thunar gvfs pulseaudio

sudo pacman -S kitty tmux fastfetch htop

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo pacman -S neovim nodejs npm ripgrep unzip

sudo pacma -S nwg-look qt5ct pavucontrol

sudo bash -c 'echo "QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment'

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

cd ~/dotfiles/
rm -rf yay

yay -S hyprshot arc-darkest-theme-git bibata-cursor-theme papirus-icon-theme

sudo pacman -S sddm

sudo systemctl enable sddm 

git clone https://github.com/L4ki/Vortex-Plasma-Themes
cd Vortex-Plasma-Themes/SDDM\ For\ Plasma\ 6/
sudo mv Vortex-SDDM-6 /usr/share/sddm/themes

sudo bash -c 'touch /etc/sddm.conf'
sudo bash -c 'echo "[Theme]" >> /etc/sddm.conf'
sudo bash -c 'echo "Current=Vortex-SDDM-6" >> /etc/sddm.conf'

git clone https://github.com/HenriqueLopes42/themeGrub.CyberEXS

sudo mv themeGrub.CyberEXS /boot/grub/themes/CyberEXS

sudo bash -c 'echo "GRUB_THEME=/boot/grub/themes/CyberEXS/theme.txt" >> /etc/default/grub'

sudo grub-mkconfig -o /boot/grub/grub.cfg

rm -rf ~/.zshrc

stow terminal
stow hyprland
stow neovim

reboot

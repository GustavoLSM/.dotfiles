#!/bin/bash
mkdir ~/.config

sudo pacman -S stow otf-comicshanns-nerd otf-geist-mono-nerd ttf-font-awesome noto-fonts-extra noto-fonts-emoji

sudo pacman -S hyprland hyprpicker hyprpaper waybar wofi qalculate-gtk wl-clipboard thunar gvfs pulseaudio

sudo pacman -S kitty tmux fastfetch htop

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

sudo pacman -S neovim nodejs npm ripgrep unzip

sudo pacman -S nwg-look qt5ct pavucontrol

sudo bash -c 'echo "QT_QPA_PLATFORMTHEME=qt5ct" >> /etc/environment'

git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

cd ~/.dotfiles/
rm -rf yay

yay -S hyprshot arc-darkest-theme-git bibata-cursor-theme papirus-icon-theme

sudo pacman -S ly

sudo systemctl enable ly 

git clone https://github.com/HenriqueLopes42/themeGrub.CyberEXS

sudo mv themeGrub.CyberEXS /boot/grub/themes/CyberEXS

sudo bash -c 'echo "GRUB_THEME=/boot/grub/themes/CyberEXS/theme.txt" >> /etc/default/grub'

sudo grub-mkconfig -o /boot/grub/grub.cfg

rm -rf ~/.zshrc
rm -rf ~/.config/hypr

stow hyprland
stow terminal
stow neovim

reboot

function commitdots --argument-names commits --argument-names message
    cd ~/.config
    yadm add alacritty arkrc btop controls.txt dconf dunst Electron fastfetch fish fontconfig glib-2.0 go gtk-3.0 gtk-4.0 hypr kate kate-externaltoolspluginrc katerc katevirc KDE kde.org kitty Kvantum kwriterc nwg-look pulse qt6ct spicetify QtProject.conf starship.toml systemd Thunar wal waybar waypaper wleave wofi wpg xfce4 xsettingsd $commits
    cd ~
    yadm add .bashrc .themes/Gruvbox-Orange-Dark .icons/Gruvbox-Light Wallpapers
    yadm commit -m $message
end

function commitdots --argument-names message --argument-names commits
    cd ~/.config
    yadm add arkrc btop controls.txt dconf dunst Electron fastfetch fish fontconfig go gtk-3.0 gtk-4.0 hypr kate kate-externaltoolspluginrc katerc katevirc KDE kde.org kitty Kvantum kwriterc nwg-look pulse qt6ct spicetify QtProject.conf starship.toml systemd Thunar waybar waypaper wleave wofi wpg xfce4 xsettingsd
    cd ~
    yadm add .bashrc .themes/Gruvbox-Orange-Dark .icons/Gruvbox-Light Wallpapers
    yadm commit -m $message
end

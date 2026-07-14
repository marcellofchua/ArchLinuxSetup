#!/bin/bash
PS3="Select item please: "
items=("Bare Minimum" "Main Software" "Other Software")
while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) echo "Selected item #$REPLY which means $item"
            	yay -S kitty zsh man tldr btop eza fzf yazi clamav os-prober hyprland firefox thunar rofi;
                break;;
            2) echo "Selected item #$REPLY which means $item"
                yay -S okular kate code gnome-boxes anki obsidian mullvad-vpn\
                pavucontrol mako ntp brightnessctl\
                thunar-volman awww fastfetch ffmpeg tty-clock khal\
                vesktop qbittorrent vlc cavalier\
                grim slurp swappy pqiv wf-recorder\
                cava feh imagemagick icat ffmpegthumbnailer tumbler\
                w3m lynx yt-dlp ytfzf sox\
                gtk2 gtk3 gtk4 nwg-look lxappearance\
                noto-fonts noto-fonts-cjk ttf-jetbrains-mono ttf-firacode ttf-nerd-fonts-symbols;
                break;;
            3) echo "Selected item #$REPLY which means $item"
                yay -S awk sed\
                docker mariadb nginx apache qemu virt-manager debtap electron samba\
                python jdk-openjdk jdk21-openjdk jdk17-openjdk rust vim neovim nasm perl lua ncurses\
                xdg-desktop-portal-gtk steam ghostty kdeconnect blender gimp gifski;
                curl -fsSL "https://raw.githubusercontent.com/SteamClientHomebrew/Millennium/main/scripts/install.sh" | sh;
                break;;
            $((${#items[@]}+1))) echo "Quit InstallerMenu.sh"; break 2;;
            *) echo "Oopsie Woopsie. $REPLY"; break;
        esac
    done
done

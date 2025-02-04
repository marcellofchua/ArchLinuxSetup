#!/bin/bash
PS3="Select item please: "
items=("Essentials" "Main Software" "Other Software" "dotFiles" "Configure ZSH")
while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) echo "Selected item #$REPLY which means $item"
            	yay -S kitty zsh man tldr btop eza fzf yazi git clamav os-prober\
            	hyprland-git hyprland-meta-git\
            	firefox thunar wofi\
            	nvidia-open nvidia-settings nvidia-utils;
                break;;
            2) echo "Selected item #$REPLY which means $item"
                yay -S okular kate code gnome-boxes anki obsidian mullvad-vpn\
                pavucontrol mako ntp brightnessctl\
                thunar-volman swww fastfetch ffmpeg tty-clock khal paleta\
                vesktop qbittorrent vlc sddm cavalier\
                qutebrowser ungoogled-chromium\
                grim slurp swappy pqiv wf-recorder\
                cava feh imagemagick icat ffmpegthumbnailer tumbler viu ueberzugpp\
                w3m lynx yt-dlp ytfzf sox\
                gtk2 gtk3 gtk4 python-pywal16 nwg-look lxappearance python-pywalfox walcord\
                noto-fonts noto-fonts-cjk ttf-jetbrains-mono ttf-firacode ttf-nerd-fonts-symbols;
                break;;
            3) echo "Selected item #$REPLY which means $item"
                yay -S awk sed\
                docker mariadb nginx apache qemu virt-manager debtap electron samba\
                python jdk-openjdk jdk21-openjdk jdk17-openjdk rust vim neovim nasm perl lua ncurses\
                xdg-desktop-portal-gtk steam ghostty kdeconnect blender gimp gifski;
                curl -fsSL "https://raw.githubusercontent.com/SteamClientHomebrew/Millennium/main/scripts/install.sh" | sh;
                mkdir -p ~/Git/NotMine;
                git clone https://github.com/chase/awrit ~/Git/NotMine;
                git clone https://github.com/hmlendea/dl-desktop ~/Git/NotMine;
                break;;
            4) echo "Selected item #$REPLY which means $item"
                cp -r Pictures/* ~/Pictures;
                break;;
            5) echo "Selected item #$REPLY which means $item"
     		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
       		yay -S --noconfirm zsh-theme-powerlevel10k-git;
            echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc;
            git clone https://github.com/zsh-users/zsh-syntax-highlighting /usr/share/;
    		echo 'source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>~/.zshrc;
      		chsh -s $(which zsh);
            break;;
            $((${#items[@]}+1))) echo "Quit InstallerMenu.sh"; break 2;;
            *) echo "Oopsie Woopsie. $REPLY"; break;
        esac
    done
done

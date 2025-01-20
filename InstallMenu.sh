#!/bin/bash

PS3="Select item please: "

items=("Minimal" "Hyprland-Install" "Post-Hyprland" "Extras")

while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) echo "Selected item #$REPLY which means $item"
            	yay -S eza fzf yazi zsh kitty btop clamav tldr w3m git;
            	break;;
            2) echo "Selected item #$REPLY which means $item"
				yay -S hyprland-git hyprland-meta-git firefox thunar nvidia-open nvidia-settings nvidia-utils;
				break;;
            3) echo "Selected item #$REPLY which means $item"
				yay -S code-oss vesktop firefox steam mullvad-vpn wofi mako kate pavucontrol okular thunar-volman ffmpeg ffmpegthumbnailer grim slurp swappy icat imgcat imgmagick pqiv ueberzugpp viu python noto-fonts noto-fonts-cjk ttf-jetbrains-mono ttf-firacode fastfetch swww;
				sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
				yay -S --noconfirm zsh-theme-powerlevel10k-git;
				echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc;
				break;;
            4) echo "Selected item #$REPLY which means $item"
				yay -S ghostty docker electron gnome-boxes qbittorrent qemu virt-manager lua nasm ncurses ungoogled-chromium duolingo-desktop-bin gimp anki blender vlc kdeconnect obsidian khal tty-clock cava cavalier ttf-nerd-font-symbols proton wf-recorder wttr yt-dlp ytfzf neovim npm octave perl traceroute sddm paleta gifski os-prober python-pywal16;
				break;;
            $((${#items[@]}+1))) echo "We're done!"; break 2;;
            *) echo "Oopsie Woopsie, there's been a Fucky Wucky. $REPLY"; break;
        esac
    done
done

chsh -s $(which zsh)


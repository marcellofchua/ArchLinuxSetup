#!/bin/bash

PS3="Select item please: "

items=("Minimal Setup No GUI" "Install Hyprland" "Main Software" "Other Software" "dotFiles" "Change to ZSH")

while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) echo "Selected item #$REPLY which means $item"
            	yay -S eza fzf yazi zsh kitty btop tldr git w3m os-prober clamav;
            	break;;
            2) echo "Selected item #$REPLY which means $item"
				yay -S hyprland-git hyprland-meta-git firefox thunar nvidia-open nvidia-settings nvidia-utils;
				break;;
            3) echo "Selected item #$REPLY which means $item"
				yay -S fastfetch wofi mako pavucontrol kate okular thunar-volman swww python-pywal16 sox\
				python jdk-openjdk jdk21-openjdk jdk17-openjdk\
				steam vesktop mullvad-vpn code-oss\
				grim slurp swappy feh cava icat imgcat imgmagick pqiv ueberzugpp ffmpeg ffmpegthumbnailer viu\
				noto-fonts noto-fonts-cjk ttf-jetbrains-mono ttf-firacode ttf-nerd-font-symbols;\
				sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
				yay -S --noconfirm zsh-theme-powerlevel10k-git;
				echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc;
				break;;
            4) echo "Selected item #$REPLY which means $item"
				yay -S ghostty docker electron gnome-boxes qbittorrent qemu virt-manager\
				lua nasm ncurses perl neovim\
				tty-clock cavalier khal wttr yt-dlp ytfzf traceroute npm octave neovim gifski\
				anki blender vlc obsidian proton wf-recorder sddm paleta lxappearance qt5-styleplugins\
				kdeconnect gimp ungoogled-chromium duolingo-desktop-bin;
				break;;
	    5) echo "Selected item #$REPLY which means $item"
				cp -r Pictures/* ~/Pictures;
				cp -r dotFiles/dotConfig ~/.config;
				cp -r dotFiles/dotUser/* ~;
				mkdir ~ .themes;
				mkdir ~ .icons;
				mkdir ~ .fonts;
				cp -r Themeing/Chicago95 ~/.themes;
				cp -r Themeing/Icons/* ~/.icons;
				cp -r Themeing/Fonts/* ~/.fonts;
				break;;
	    6) echo "Selected item #$REPLY which means $item"
				chsh -s $(which zsh);
				break;;
            $((${#items[@]}+1))) echo "We're done!"; break 2;;
            *) echo "Oopsie Woopsie. $REPLY"; break;
        esac
    done
done

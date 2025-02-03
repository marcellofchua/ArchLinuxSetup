#!/bin/bash
PS3="Select item please: "
items=("Minimal Setup No GUI" "Install Hyprland" "Main Software" "Other Software" "dotFiles" "Configure ZSH")
while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) echo "Selected item #$REPLY which means $item"
            	yay -S eza fzf yazi zsh kitty btop tldr man git w3m os-prober clamav;
            	break;;
            2) echo "Selected item #$REPLY which means $item"
		yay -S hyprland-git hyprland-meta-git firefox thunar nvidia-open nvidia-settings nvidia-utils;
		break;;
            3) echo "Selected item #$REPLY which means $item"
		yay -S fastfetch wofi mako pavucontrol kate okular thunar-volman swww python-pywal16 sox\
		python jdk-openjdk jdk21-openjdk jdk17-openjdk\
		steam vesktop mullvad-vpn code\
  		grim slurp swappy feh cava icat imgcat imagemagick pqiv ueberzugpp ffmpeg ffmpegthumbnailer viu tumbler\
		noto-fonts noto-fonts-cjk ttf-jetbrains-mono ttf-firacode ttf-nerd-fonts-symbols;
		break;;
            4) echo "Selected item #$REPLY which means $item"
		yay -S ghostty docker electron gnome-boxes qbittorrent qemu virt-manager\
		lua nasm ncurses perl neovim anki obsidian wf-recorder python-pywalfox16\
		tty-clock cavalier khal wttr yt-dlp ytfzf traceroute npm octave gifski\
		blender vlc proton sddm paleta lxappearance qt5-styleplugins qutebrowser\
		xdg-desktop-portal-gtk kdeconnect gimp ungoogled-chromium;
		curl -fsSL "https://raw.githubusercontent.com/SteamClientHomebrew/Millennium/main/scripts/install.sh" | sh;
  		mkdir ~/Git/ ~/Git/Mine ~/Git/NotMine;
		git clone https://github.com/chase/awrit ~/Git/NotMine;
  		git clone https://github.com/hmlendea/dl-desktop ~/Git/NotMine;
		break;;
	    5) echo "Selected item #$REPLY which means $item"
		cp -r Pictures/* ~/Pictures/;
		swww img ~/Pictures/Wallpapers/toyama.gif;
		cp -r dotFiles/dotConfig/* ~/.config/;
		cp -r dotFiles/dotUser/* ~/;
		chmod u+x nameToDot.sh;
		./nameToDo.sh;
		rm nameToDo.sh;
		mkdir ~/.themes ~/.icons ~/.fonts;
  		cp -r Themeing/Neuro-sama ~/.icons;
		break;;
	    6) echo "Selected item #$REPLY which means $item"
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

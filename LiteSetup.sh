#!/bin/bash
PS3="Select item please: "
items=("Minimal Setup" "Hyprland Install" "Essentials" "Miscellaneous" "Configure ZSH")
while true; do
    select item in "${items[@]}" Quit
    do
        case $REPLY in
            1) echo "Selected item #$REPLY which means $item"
	     	yay -S kitty zsh man tldr btop eza fzf yazi git clamav os-prober;
		break;;
            2) echo "Selected item #$REPLY which means $item"
	    	yay -S hyprland-git hyprland-meta-git firefox thunar wofi;
		break;;
            3) echo "Selected item #$REPLY which means $item"
	    	yay -S okular kate code gnome-boxes;
		break;;
  	    4) echo "Selected item #$REPLY which means $item"
	    	yay -S mako ntp brightnessctl\
      		ffmpeg fastfetch w3m tty-clock khal\
      		cava feh tumbler viu grim slurp imagemagick icat\
      		awk sed lynx nasm;
		break;;
	    5) echo "Selected item #$REPLY which means $item"
     		sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)";
       		yay -S --noconfirm zsh-theme-powerlevel10k-git;
		echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc;
  		git clone https://github.com/zsh-users/zsh-syntax-highlighting /usr/share/;
    		echo 'source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' >>~/.zshrc;
      		chsh -s $(which zsh);
		break;;
            $((${#items[@]}+1))) echo "Quit Configure.sh"; break 2;;
            *) echo "Oopsie Woopsie. $REPLY"; break;
        esac
    done
done

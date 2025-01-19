# Minimal Install
yay -S curl eza grep grub nano zsh
chsh -s $(which zsh)

# Hyprland Install
yay -S kitty gtk3 ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm xorg-xwayland libinput libliftoff libdisplay-info cpio tomlplusplus hyprlang-git hyprcursor-git hyprwayland-scanner-git xcb-util-errors hyprutils-git glaze hyprgraphics-git nvidia-open nvidia-settings nvidia-utils sddm swww thunar ttf-jetbrains-mono wofi zsh-theme-powerlevel10k-git gtk gtk2 gtk4 qt5 qt6 hyprland-meta-git

# After Hyprland Install
yay -S avahi base-devel clamav dd_rescue ddrescue less more btop fzf ghostty tldr yazi zip gzip tar unrar unzip docker electron gnome-boxes fuse-common fuse2 fuse3 jq lua make parted partitionmanager qbittorrent qemu thunar-volman virt-manager alsa-plugins pavucontrol pipewire pulseaudio-qt wireplumber firefox ungoogled-chromium-bin w3m cava feh ffmpeg ffmpegthumbnailer gimp grim gulp icat imagemagick imgcat pqiv slurp swappy ueberzugpp viu webm kate kdeconnect mako okular paleta vlc wlogout anki blender duolingo-desktop-bin obsidian code-oss gcc git jdk-openjdk jdk21-openjdk nwg-look python noto-fonts noto-fonts-cjk se98-icon-theme-git ttf-firacode ttf-nerd-fonts-symbols cavalier fastfetch khal proton steam tty-clock vesktop wf-recorder wttr yt-dlp ytfzf nasm ncurses neovim npm octave perl traceroute

sudo chsh -s $(which zsh)

cp -r User/* ~

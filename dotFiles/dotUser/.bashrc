if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"

# Standard plugins can be found in $ZSH/plugins/
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

### Aliases
# Main
alias ls='eza -x --color=auto'
alias grep='grep --color=auto'
alias date="date +%D' '%A' '%r"
alias cal='khal calendar'
alias ff='kitten icat -n --align=left ~/Pictures/Fastfetch/sunny.gif | fastfetch --raw - --config ~/.config/fastfetch/presets/main.jsonc'
alias yz='yazi'
# Configuration Files
alias kc='sudo nano ~/.config/kitty/kitty.conf'
alias gc='sudo nano ~/.config/ghostty/config'
alias hc='sudo nano ~/.config/hypr/hyprland.conf'
alias bc='sudo nano ~/.bashrc'
alias zc='sudo nano ~/.zshrc'
alias ffc='sudo nano .config/fastfetch/config.jsonc'
# Drives and Shortcuts
alias kde-polkit='/usr/lib/polkit-kde-authentication-agent-1'
# Media Commands
alias pq='pqiv -ci'
alias wfa='wf-recorder'
alias wfr='wf-recorder -g "$(slurp)"'
alias wfs='wf-recorder -a'
alias sortrename='ls -v | cat -n | while read n f; do mv -n "$f" "$n.ext"; done '
alias imgres='ffprobe -v error -select_streams v:0 -show_entries stream=width,height -of csv=s=x:p=0'
# Mullvad VPN
alias mad='mullvad'
alias madc='mullvad connect'
alias madd='mullvad disconnect'
alias mads='mullvad status'
# Git
alias gits='git status'
alias gita='git add'
alias gitc='git commit -m'
alias gitl='git log'
alias gitp='git push -u origin main'
# Language Translations
alias enl='trans en:nl'
alias nle='trans nl:en -b'
# Programs
alias vial='~/Stuff/AppImages/./Vial.AppImage'
alias steaM='~/.millennium/start.sh'
# Development
alias testSDDM='sddm-greeter --test-mode --theme'
# My Programs
alias borderCalc='python ~/Projects/CalculationsForMe/LoginBoxBorderCalculator.py'
# Testing
alias testNotif='~/.config/mako/testNotifications.sh'
# Fun
alias ghost='~/.config/ghostty/danceghosttydance/./ghostty-animation'

cat /home/smonk/.cache/wal/sequences
wal -R

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
clear

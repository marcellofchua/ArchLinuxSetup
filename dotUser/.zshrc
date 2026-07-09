#######################
### ZSH SETUP START ###
#######################

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Standard plugins can be found in $ZSH/plugins/
plugins=( git zsh-autosuggestions )

# Manually added to PATH, lol
export PATH="/home/$USER/.local/bin:$PATH"

# ZSH Patina Syntax Highlighting
eval "$(zsh-patina activate)"

#####################
### ZSH SETUP END ###
#####################

########################
### START of ALIASES ###
########################
# Terminal Defaults
alias hypr='start-hyprland'
alias ls='eza -x --color=auto'
alias grep='grep --color=auto'
alias date="date +%D' '%A' '%r"

# Shortcuts
alias yz='yazi'
alias ka='killall'
alias bs='brightnessctl s'
alias klok='tty-clock -scbtnr'

# Tools
alias ff='kitten icat -n --align=left ~/Pictures/Fastfetch/lainFF.gif | fastfetch --raw - --config ~/.config/fastfetch/presets/main.jsonc
todo list'

# Configuration Files
alias kc='sudo nano ~/.config/kitty/kitty.conf'
alias hc='sudo nano ~/.config/hypr/hyprland.conf'
alias zc='sudo nano ~/.zshrc'

######################
### END of ALIASES ###
######################

clear

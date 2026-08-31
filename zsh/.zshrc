# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

[[ -s /home/conner/.zsh/autojump/etc/profile.d/autojump.sh ]] && source /home/conner/.zsh/autojump/etc/profile.d/autojump.sh

        autoload -U compinit && compinit -u

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source /home/conner/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


alias update="bash ~/Scripts/update.sh"
alias install="yay -S"
alias search="pacseek"
alias remove="yay -R"
alias btw="neofetch"
alias sl="sl | lolcat"
alias ls="exa -abhHlS"
alias rr="yazi"
alias config="nvim ~/dotfiles/hypr/hyprland.lua"
alias configT="nvim ~/dotfiles/kitty/kitty.conf"
alias configZ="nvim ~/dotfiles/zsh/.zshrc"
alias configW="nvim ~/dotfiles/waybar/config"
alias configS="nvim ~/dotfiles/waybar/style.css"
alias configL="nvim ~/dotfiles/hypr/hyprlock.conf"
alias init.lua="nvim ~/dotfiles/nvim/init.lua"
alias locate="whereis"
alias mkex="chmod +x"
alias status="mullvad status"
alias connect="mullvad connect"
alias disconnect="mullvad disconnect"
alias test="ping archlinux.org"
alias p10k="p10k configure"
alias weather="curl wttr.in"
alias rudo="sudo EDITOR=nvim yazi"
alias waybar="pkill waybar && nohup waybar &"
alias english="trans"
alias spanish="trans -t es"
alias age="sudo tune2fs -l /dev/nvme1n1p1"
alias dsync="~/.config/emacs/bin/doom sync"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/conner/.dart-cli-completion/zsh-config.zsh ]] && . /home/conner/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

export EDITOR="nvim"
export VISUAL="nvim"

export PATH="$HOME/.config/emacs/bin:$PATH"

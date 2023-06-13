LC_TYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

export ZSH="$HOME/.oh-my-zsh"
export GOPATH="$HOME/go"
export GOBIN="$HOME/go/bin"
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

ZSH_THEME="robbyrussell"

plugins=(
git
sudo 
ssh
fzf
zsh-autosuggestions
fzf-tab
)

source $ZSH/oh-my-zsh.sh

alias vim="nvim"
alias vi="nvim"
alias ls="exa"
alias ll="ls -l"
alias la="ls -la"
alias tree="exa -T"
alias zshrc="vim ~/.zshrc"
alias gdbinit="vim ~/.gdbinit"

alias gs="git status"
alias gp="git push"
alias ga="git add"
alias gcm="git commit --message"

alias vimrc="vim ~/.config/nvim/init.vim"
alias makej="make -j$(nproc)"

eval "$(zoxide init zsh)"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

xrandr --output HDMI-1 --right-of DP-3

clear
neofetch 
fortune | cowsay | lolcat


export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="mgutz"

plugins=(git
zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

alias zshrc="nvim ~/.zshrc"
alias vimrc="nvim ~/.config/nvim/init.vim"
alias ohmyzsh="nvim ~/.oh-my-zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vi="nvim"
alias vim="nvim"

alias gs="git status"
alias gcm="git commit --message"
alias gp="git push"
alias ga="git add"
alias gcam="git commit -a --message"

alias ls="exa"
alias ll="exa -l"
alias la="exa -la"
alias tree="exa -T"
alias treel="exa -T -l"
alias lsg="exa --git-ignore"
alias llg="exa -l --git-ignore"
alias lag="exa -la --git-ignore"
alias treeg="exa -T --git-ignore"
alias treegl="exa -T -l --git-ignore"
alias makej="make -j$(nproc)"
alias treelg=treegl

eval "$(zoxide init zsh)"

bindkey "\e[1;2D" backward-word
bindkey "\e[1;2C" forward-word

alias find=gfind
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export CPLUS_INCLUDE_PATH="$LIBRARY_PATH:$(brew --prefix)/include"

source ~/.iterm2_shell_integration.zsh
export PATH="/opt/homebrew/opt/qt@5/bin:$PATH"
export PATH="/Users/holod/.cabal/bin/:$PATH"
export PATH="$(brew --prefix e2fsprogs)/sbin/:$PATH"
eval $(opam env --switch=default)


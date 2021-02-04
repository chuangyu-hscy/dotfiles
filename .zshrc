export ZSH="/Users/huangsunchuangyu/.oh-my-zsh"
export PATH="/Users/huangsunchuangyu/opt/anaconda3/bin:$PATH"

# synatx highliting for man pages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Customize Prompt (s) while powerlevel9k not installed yet
# PROMPT='
# %1~ %L %# '
#
# RPROMPT='%*'

#  POWERLEVEL9K Theme setting
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=✿ﾟ

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="(✿╹◡╹) ノ "
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="🌸 "

POWERLEVEL9K_SHORTEN_DIR_LENGTH=1

POWERLEVEL9K_SHORTEN_STRATEGY=”truncate_from_right”
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(os_icon status date history vi_mode)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs dir_writable)

# zsh plugins
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

# zsh highlighting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=190'
# ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=blue,underline,bold
# ZSH_HIGHLIGHT_STYLES[precommand]=fg=blue,underline,bold
# ZSH_HIGHLIGHT_STYLES[arg0]=fg=blue,bold

# alias
alias ls="ls -lah" # show the list with a human readable details
alias cl='clear' # clean the terminal
alias dk='~/Desktop' # direct to the desktop folder
alias doc='~/Documents' # director to the documents folder
alias py=python3 # change the python version
alias jl"jupter lab" # start jupter lab session
alias szsh="source ~/.zshrc" # source .zshrc
alias tree="exa -T" # show the file with a tree structure

# function
function mkcd() { # makde new directory(s) and change to the last one
	mkdir -p "$@" && cd "$_";
}

source $ZSH/oh-my-zsh.sh
cl # clear the prompt

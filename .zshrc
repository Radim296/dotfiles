# zsh settings
export ZSH="$HOME/.oh-my-zsh"
plugins=(git web-search docker zsh-autosuggestions) # ZSH_THEME="simple"
ZSH_THEME="dracula"
source $ZSH/oh-my-zsh.sh

alias gitlines="git diff --shortstat '@{1 day ago}' | grep -o '[0-9]\+ insertion' | grep -o '[0-9]\+'"
alias rundocker="open -a Docker"
alias stopdocker="open -a Docker"

# zoxide configurations
eval "$(zoxide init zsh)"

# that command makes new folder and opens it at once
mkdircd() {
    mkdir $1;
    cd $1;
}

trans() {
    yandex translate $1;
}

# easily create python virtual enviroment and add it in gitignore
initenv() {
    python3 -m venv env;
    echo "env" >> .gitignore;
}

# open's nvim and after closing enables all changes
zshrc() {
    nvim ~/.zshrc;
    source ~/.zshrc;
}

# Vim 
alias vim="nvim"
alias ara="alembic revision --autogenerate"
alias old_vim="/usr/bin/vim"

# self made tools
alias clearhome="source ~/.delete.ba:sh"
alias quizlet="python3.10 ~/code_projects/quizlet_cli_analogue/code/main.py"
alias ssd="python3 ~/code_projects/ssd_analyser/ssd.py"

# other aliases
alias finder="open -a Finder"
alias bat="bat --theme base16"
alias finder.="open -a Finder ."
# alias media_keys="launchctl load -w /System/Library/LaunchAgents/com.apple.rcd.plist"
# alias media_keys_off="launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist"

# programming
alias rasp="ssh radim@192.168.0.134"
alias actenv="source env/bin/activate"

# backup config files
cp ~/.zshrc ~/dotfiles/
cp ~/.vimrc ~/dotfiles/
cp ~/.tmux.conf ~/dotfiles/

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/radimgumirov/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/radimgumirov/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/radimgumirov/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/radimgumirov/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PATH="/usr/local/opt/libpq/bin:$PATH"

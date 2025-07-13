# --- Colorful and Informative Prompt ---
export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "

# --- Aliases for Productivity ---
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# --- Useful Functions ---
unzip () {
    if [ -f "$1" ]; then
        case "$1" in
            *.tar.bz2)   tar xjf "$1"    ;;
            *.tar.gz)    tar xzf "$1"    ;;
            *.bz2)       bunzip2 "$1"    ;;
            *.rar)       unrar x "$1"    ;;
            *.gz)        gunzip "$1"     ;;
            *.tar)       tar xf "$1"     ;;
            *.tbz2)      tar xjf "$1"    ;;
            *.tgz)       tar xzf "$1"    ;;
            *.zip)       unzip "$1"      ;;
            *.Z)         uncompress "$1" ;;
            *.7z)        7z x "$1"       ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

# --- Environment Variables ---
export EDITOR=code
export VISUAL=code

# --- Enable bash completion if available ---
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
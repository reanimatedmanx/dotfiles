# --- Colorful and Informative Prompt ---
export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n\$ "

# --- Aliases for Productivity ---
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# --- Useful Functions ---
extract () {
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
export EDITOR=nvim
export VISUAL=nvim
export PATH="$HOME/.cargo/bin:$HOME/.local/bin:$PATH"

# --- Git Branch in Prompt (optional) ---
parse_git_branch() {
    git branch 2>/dev/null | grep '*' | sed 's/* //'
}
export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[36m\]\$(parse_git_branch)\[\e[0m\]\n\$ "

# --- Source user-specific bashrc if exists ---
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# --- Suggestions for more productivity ---
# - Add fzf for fuzzy file finding: https://github.com/junegunn/fzf
# - Add autojump or z for fast directory switching
# - Add asdf or nvm for managing language versions
# - Add starship for a cross-shell prompt
# - Add direnv for project-specific environment variables
# - Add docker and kubectl completions if you use them

# --- Enable bash completion if available ---
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
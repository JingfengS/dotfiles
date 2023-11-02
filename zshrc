# Set PROMPT
export CLICOLOR=1
export LSCOLORS=ExGxFxdaCxDaDahbadeche

autoload -U colors && colors
eval $(/opt/homebrew/bin/brew shellenv)
PROMPT="%{$fg_bold[cyan]%}@Jingfeng %{$fg_bold[green]%}%1~ %B%F{196}>%f%F{cyan}>%f%F{011}>%f%b "

# Set autosuggestions and syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

export PATH="/opt/homebrew/opt/sqlite/bin:$PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/jingfengsun/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/jingfengsun/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/jingfengsun/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/jingfengsun/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# alias
alias condaenv='conda activate'
alias jupynote='jupyter notebook'
alias jupylab='jupyter-lab'
alias ls='exa'
alias vim='nvim'
alias ncmp='ncmpcpp'
alias cat='bat'
alias mv="mv -i"
alias trash="trash -Fv"

# Set the terminal connection agent
export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7890

# Set vim as default editor
set -o vi

# Generize token for homebrew to access github
export HOMEBREW_GITHUB_API_TOKEN=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

# Add the jetbrain toolbox
export PATH="$PATH:/Users/jingfengsun/Library/Application Support/JetBrains/Toolbox/scripts"

# Add my own scripts
export PATH="$PATH:/Users/jingfengsun/bin"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# opam configuration
[[ ! -r /Users/jingfengsun/.opam/opam-init/init.zsh ]] || source /Users/jingfengsun/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# bat theme
export BAT_THEME="ansi"

# Set zed
eval "$(zoxide init zsh)"

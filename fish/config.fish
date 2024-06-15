function extract
    if test -z "$argv[1]"
        echo "Usage: extract <path/file>"
        return 1
    end

    switch "$argv[1]"
        case '*.tar.bz2' tar xjf "$argv[1]"
        case '*.tar.gz' tar xzf "$argv[1]"
        case '*.bz2' bunzip2 "$argv[1]"
        case '*.rar' unrar x "$argv[1]"
        case '*.gz' gunzip "$argv[1]"
        case '*.tar' tar xf "$argv[1]"
        case '*.tbz2' tar xjf "$argv[1]"
        case '*.tgz' tar xzf "$argv[1]"
        case '*.zip' unzip "$argv[1]"
        case '*.Z' uncompress "$argv[1]"
        case '*.7z' 7z x "$argv[1]"
            default echo "Don't know how to extract $argv[1]"
    end
end

function cd...
    cd ../..
end

alias x='extract'

alias nv='nvim'
alias LS='lsd'
alias ls='lsd'
alias r='yazi'
alias R='yazi'
alias CD='cd'
alias vpnuoe='sudo openfortivpn remote.net.ed.ac.uk:8443 -u s2223191'

alias gaa='git add --all'
alias gcm='git commit -m'
alias ga='git add'
alias gst='git status'
alias gp='git push'
alias gi 'git init; touch README.md; touch .gitignore; git add README.md .gitignore; git commit -m "first commit"; git branch -M main'




zoxide init --cmd j fish | source
starship init fish | source

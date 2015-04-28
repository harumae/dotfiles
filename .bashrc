alias ls='ls -vG'
alias ll='ls -vlG'
alias la='ls -valG'
alias vi='vim'
alias rm='rm -i'
alias diff='colordiff --side-by-side --suppress-common-lines --width=`tput cols`'
alias t='tmux -u'
alias ctags='/usr/local/bin/ctags'
alias dh='ssh -t kerberos "ssh root@ldg101.admin.xen.livedoor"'
alias svn='colorsvn'

settitle() {
    printf "\033k$1\033\\"
}

ssh() {
    settitle "$1"
    command ssh "$@"
    settitle "bash"
}

# search google with w3m
function google() {
local str opt
if [ $ != 0 ]; then
    for i in $*; do
        str="$str+$i"
    done
    str=`echo $str | sed 's/^\+//'`
    opt='search?num=50&amp;hl=ja&amp;lr=lang_ja'
    opt="${opt}&amp;q=${str}"
fi
w3m http://www.google.co.jp/$opt
}
 
# search alc with w3m
function alc() {
if [ $ != 0 ]; then
    w3m "http://eow.alc.co.jp/$*/UTF-8/?ref=sa"
else
    w3m "http://www.alc.co.jp/"
fi
}

# google translate (English -> Japanese)
function gte() {
    google_translate "$*" "en-ja"
}

# google translate (Japanese -> English)
function gtj() {
    google_translate "$*" "ja-en"
}

function google_translate() {
    local str opt cond

    if [ $# != 0 ]; then
        str=`echo $1 | sed -e 's/  */+/g'`
        cond=$2

        if [ $cond = "ja-en" ]; then
            opt='?hl=ja&sl=ja&tl=en&ie=UTF-8&oe=UTF-8'
        else
            opt='?hl=ja&sl=en&tl=ja&ie=UTF-8&oe=UTF-8'
        fi
    else
        opt='?hl=ja&sl=en&tl=ja&ie=UTF-8&oe=UTF-8'
    fi

    opt="${opt}&text=${str}"
    w3m +13 "http://translate.google.com/${opt}"
}

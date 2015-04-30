[ -f ~/.bashrc ] && source ~/.bashrc
PROMPT_COMMAND='settitle "localhost"'
JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.8"`
PATH=$JAVA_HOME/bin:$PATH
PATH=/usr/local/mysql/bin:$PATH
WS=$HOME/Developments/
HOMEBREW_GITHUB_API_TOKEN=76cea80f046f34c9e1a6d70aeea907e4d068c286
HOMEBREW_BREWFILE=~/Developments/github/dotfiles/Brewfile

export PATH WS HOMEBREW_GITHUB_API_TOKEN HOMEBREW_BREWFILE

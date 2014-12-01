[ -f ~/.bashrc ] && source ~/.bashrc
PROMPT_COMMAND='settitle "localhost"'
JAVA_HOME=`/System/Library/Frameworks/JavaVM.framework/Versions/A/Commands/java_home -v "1.7"`
PATH=/System/Library/PrivateFrameworks/Apple80211.framework/Versions/A/Resources:$PATH
PATH=$JAVA_HOME/bin:$PATH
WS=$HOME/Developments/workspace

export PATH WS

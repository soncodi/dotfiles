
PS1='\033[1;37m\W\033[0m$(__git_ps1 "|\033[0;33m%s\033[0m") '

LS_COLORS='rs=0:di=01;94:'

alias ll='ls -alh'

alias code='GTK_IM_MODULE="xim" code'

export PATH="$PATH:$HOME/.npm-global/bin"
export NODE_PATH="$NODE_PATH:$HOME/.npm-global/lib/node_modules"

stty -ixon

# export ANDROID_HOME="${HOME}/Android/Sdk"
# export PATH="${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools"

# ANDROID_STUDIO="${HOME}/Desktop/android-studio"
# # export JAVA_HOME=$ANDROID_STUDIO/jre
# export PATH="${PATH}:${ANDROID_STUDIO}/gradle/gradle-3.2/bin"
# export PATH="${PATH}:${ANDROID_STUDIO}/jre/bin"

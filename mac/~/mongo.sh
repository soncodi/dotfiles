
# https://gist.github.com/subfuzion/9630872
brew install mongodb
ln -sfv /usr/local/opt/mongodb/*.plist ~/Library/LaunchAgents
launchctl load ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist
launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.mongodb.plist

brew services list | grep mongodb
brew services start mongodb
brew services stop mongodb

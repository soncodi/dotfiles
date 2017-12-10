
# https://apple.stackexchange.com/questions/10467
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)


# http://osxnotes.net/keybindings.html
# mkdir -p ~/Library/KeyBindings
# ~/Library/KeyBindings/DefaultKeybindings.dict
{
  "@\U007f" = ( deleteWordBackward:);
}

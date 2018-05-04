#!/usr/bin/env bash

echo ""
echo "Installing Homebrew and formulae..."
echo ""

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install git
brew install lua
brew install zsh
brew install mas
brew install par
brew install ruby
brew install fasd
brew install trash
# brew install tldr
# brew install tree
brew install lua@5.3
brew install luajit
brew install cscope
brew install pandoc
brew install rename
brew install python
brew install python3
brew install dockutil
brew install carthage
brew install thefuck
brew install terminal-notifier
brew install curl --with-openssl

brew tap caskroom/cask
brew cask install vlc
brew cask install java
brew cask install calibre
brew cask install opensim
brew cask install firefox
brew cask install basictex
brew cask install appcleaner
brew cask install hammerspoon
brew cask install transmission
brew cask install flash-player
brew cask install google-chrome
brew cask install the-unarchiver
brew cask install github-desktop
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-csv qlimagesize

# sudo chown -R $(whoami):admin /usr/local
# sudo chmod -R g+rwx /usr/local
# This is necessary so that `brew prune` can do its thing.

# Edit: That's not possible on High Sierra, so:
sudo chown -R $(whoami) $(brew --prefix)/*


brew prune
brew cleanup

echo ""
echo "Done."
echo ""
echo "---"


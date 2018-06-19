# Mac OS X

credits: https://gist.github.com/kevinelliott/3135044

Apps
----
[Chrome](http://google.com/chrome),
[iTerm](http://iterm2.com),



# Shell

Switch to z-shell + agnoster
---------------
```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sudo chsh -s $(which zsh)
#https://gist.github.com/agnoster/3712874
echo 'ZSH_THEME="agnoster"' >> ~/.zshrc
# powerline fonts
git clone https://github.com/powerline/fonts.git
./fonts/install.sh
rm -rf fonts
echo 'ZSH_THEME="agnoster"' >> ~/.zshrc
```
Iterm2 > preferences > profile > color : set contrast to min
Iterm2 > preferences -> Appearance -> Dim : reduce value



# OS X Preferences

```bash
#Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"
#Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true
#Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

#Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

#Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 2
#Set a shorter Delay until key repeat
defaults write NSGlobalDomain InitialKeyRepeat -int 25

```

Set hostname
------------
`sudo scutil --set HostName myl`



# Homebrew


```bash
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask
```

```bash
brew install coreutils # GNU utilies prepending with 'g' (to replace: use --default-names)
brew install git git-flow wget curl pstree tree htop nodenv
nodenv init && nodenv install 9.11.2


brew cask install google-chrome
brew cask install firefox
brew cask install iterm2
brew cask install spotify
brew cask install virtualbox
brew cask install docker
brew cask install intellij-idea



brew cask install vagrant
brew cask install vagrant-manager
brew cask install atom
brew cask install github
```

# SDKman
```
curl -s "https://get.sdkman.io" | bash
sdk install java 7.0.181-zulu
sdk install java 8.0.171-oracle
sdk install maven 3.3.9
sdk install gradle

```

# Git

Setup Github
------------
```bash
ssh-keygen -t rsa -C "****@gmail.com"
cat  ~/.ssh/id_rsa.pub
ssh -T git@github.com	#test connection

#set git config values
git config --global user.name "xsenechal"
git config --global user.email "****@gmail.com"
git config --global github.user xsenechal
git config --global github.token your_token_here

git config --global core.editor "subl -w"
git config --global color.ui true
```

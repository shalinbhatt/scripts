#
# After resetting the system or getting a new system(macbooks only) and to get back to coding instantly
# This is the script that works for me to install ruby on my macbook
# Open Terminal on the macbook and run this script by ~/install_ruby_mac.sh 
# Change or don't install editor by commenting the line out
# VS code is what I use so I have it installed on my mac
# 

xcode-select --install #Installs Command line tools for MacOS

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" #installs Homebrew
   echo 'Done Installing Homebrew'

gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB #installs gpg keys to verify rvm package
   echo 'Done Installing GPG'

\curl -sSL https://get.rvm.io | bash -s stable --ruby # installs rvm with stable version of ruby
   echo 'Done Installing RVM with Stable Version of Ruby.'

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" #installing Oh-my-zsh

brew update                           # Fetches latest version of homebrew and formula.
brew tap caskroom/cask                # Tap the Caskroom/Cask repository from Github using HTTPS.
brew search visual-studio-code        # Searches all known Casks for a partial or exact match.
brew cask install visual-studio-code  # Installs Visual Studio Code.
brew cleanup
    echo 'Done Installing Visual Studio Code.'


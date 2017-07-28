# Jon Mac Setup

Process to setup a fresh Mac install for development.

## Installation

### Install Homebrew
```bash
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Download this repo
```bash
cd ~/Desktop
curl -L https://github.com/jonginn/dotfiles/archive/master.zip > dotfiles.zip
unzip dotfiles.zip
```

### Install what we need from Homebrew
```bash
./.brew
```

### Install what we need from NPM
```bash
./.node
```

### Install what we need from Rubygems
```bash
./.gems
```

### Install some useful native applications
```bash
./.cask
```

### Setup some sensible OSX defaults
```bash
./.osx
```

### Get ready for Git
Edit `./.extra` and edit:

- `GIT_AUTHOR_NAME`
- `GIT_AUTHOR_EMAIL`

### Create an SSH Key
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Update Apache to use PHP from Homebrew
Follow the steps from [here](https://getgrav.org/blog/macos-sierra-apache-multiple-php-versions).

### Install [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh).
```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### Install the dotfiles
```bash
source ./bootstrap.sh
```

## Extras

### Install custom Terminal theme
- Open Terminal
- Open Preferences
- Goto Profiles tab
- Import `./presets/jonginn.terminal`
- Set as default

### Install OneDrive

Install it!

### Mackup
If restoring...

    brew install mackup
    mackup restore

### Configure Karabiner

Configure CapsLock to F19.

### Install Alfred w/ config

* License in Evernote. Config in OneDrive.
* https://www.alfredapp.com/

### Configure BetterTouchTool w/ config

License + Config in OneDrive.

## Things to do now

### Check out Scotchbox

https://box.scotch.io/

## Thanks to
* [Adz](http://github.com/skattyadz), [for a bunch of cool things](https://github.com/skattyadz/dotfiles/blob/master/homebrew/Brewfile) which I've added here
* [Rareloop](http://github.com/rareloop), for their own version of this which I've totally nicked
* [Mathias Bynens](http://twitter.com/mathias "Follow @mathias on Twitter") for the [original repo](https://github.com/mathiasbynens/dotfiles) Rareloop used to start this guide.

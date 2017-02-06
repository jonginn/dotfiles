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
~/Desktop/dotfiles-master/.brew
```

### Install what we need from NPM
```bash
~/Desktop/dotfiles-master/.node
```

### Install what we need from Rubygems
```bash
~/Desktop/dotfiles-master/.gems
```

### Install some useful native applications
```bash
~/Desktop/dotfiles-master/.cask
```

### Setup some sensible OSX defaults
```bash
~/Desktop/dotfiles-master/.osx
```

### Get ready for Git
Edit `~/Desktop/dotfiles-master/.extra` and edit:

- `GIT_AUTHOR_NAME`
- `GIT_AUTHOR_EMAIL`

### Create an SSH Key
```bash
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```

### Update Apache to use PHP from Homebrew
Follow the steps from [here](https://getgrav.org/blog/macos-sierra-apache-multiple-php-versions).

### Install the dotfiles
```bash
source ~/Desktop/dotfiles-master/bootstrap.sh
```

### Install SCM Breeze
```bash
./scm_breeze.sh
```

## Extras

### Install custom Terminal theme
- Open Terminal
- Open Preferences
- Goto Profiles tab
- Import `~/Desktop/dotfiles-master/presets/Rareloop.terminal`
- Set as default

### Setup code linting in Sublime Text

First, [download & install sublime](https://download.sublimetext.com/Sublime%20Text%20Build%203083.dmg). __Note: Using `brew cask install sublime-text` installed Sublime Text 2, not 3. Didn't seem to have one for 3.__

Then, install [Package Control](https://packagecontrol.io/installation).

Using Package Control, add this to your Package Control -> User Settings.

```json
"installed_packages":
    [
        "BracketHighlighter",
        "Emmet",
        "HTMLBeautify",
        "InsertDate",
        "jQuery",
        "JsFormat",
        "List stylesheet variables",
        "LiveStyle",
        "Markdown Extended",
        "SublimeLinter",
        "SublimeLinter-contrib-eslint",
        "SublimeLinter-json",
        "SublimeLinter-phpcs",
        "Package Control",
        "Perfectionist",
        "Twig",
        "Phpcs",
        "SCSS",
        "Search WordPress Codex",
        "WordPress",
        "GitGutter"
    ]
```

Now, install dependencies for the linters:

**[SublimeLinter-phpcs](https://github.com/SublimeLinter/SublimeLinter-phpcs)**

- [Install PEAR and PECL on Mac OS X](http://jason.pureconcepts.net/2012/10/install-pear-pecl-mac-os-x/)
- `pear install PHP_CodeSniffer`

**[SublimeLinter-eslint](https://github.com/roadhump/SublimeLinter-eslint)**

- `npm install -g eslint`

**[Sublimelinter-scss-lint](https://github.com/attenzione/SublimeLinter-scss-lint)**

- `sudo gem install scss_lint`

**Sublime Theme**

- Install [Fira Code](https://github.com/tonsky/FiraCode) font.
- Install [Source Sans Pro](https://github.com/adobe-fonts/source-code-pro) font.

### Sublime - User Settings

```json
{
	"always_show_minimap_viewport": true,
	"auto_complete_selector": "source, meta.tag - punctuation.definition.tag.begin",
	"color_scheme": "Packages/Color Scheme - Default/Solarized (Dark).tmTheme",
	"default_line_ending": "LF",
	"bold_folder_labels": true,
	"ensure_newline_at_eof_on_save": true,
	"file_exclude_patterns":
	[
		"*.pyc",
		"*.scssc",
		".sass_cache",
		"*.pyo",
		"*.exe",
		"*.dll",
		"*.obj",
		"*.o",
		"*.a",
		"*.lib",
		"*.so",
		"*.dylib",
		"*.ncb",
		"*.sdf",
		"*.suo",
		"*.pdb",
		"*.idb",
		".DS_Store",
		"*.class",
		"*.psd",
		"*.db",
		"CVS"
	],
	"folder_exclude_patterns":
	[
		".sass-cache",
		".svn",
		".git",
		".hg",
		"CVS",
		"tmp/cache",
		"wp-content/cache",
		"/vendor/",
		"node_modules"
	],
	"font_face": "Source Code Pro",
	"font_size": 14.0,
	"ignored_packages":
	[
		"Search WordPress Codex",
		"Vintage"
	],
	"indent_guide_options":
	[
		"draw_normal",
		"draw_active"
	],
	"line_padding_bottom": 2,
	"line_padding_top": 2,
	"overlay_scroll_bars": "enabled",
	"scroll_past_end": true,
	"smart_indent": true,
	"tab_size": 2,
	"translate_tabs_to_spaces": true,
	"trim_automatic_white_space": true,
	"trim_trailing_white_space_on_save": true,
	"word_wrap": true
}

```

### Sublime - SublimeLinter Settings

```json
{
    "user": {
        "debug": false,
        "delay": 0.25,
        "error_color": "D02000",
        "gutter_theme": "Packages/SublimeLinter/gutter-themes/Default/Default.gutter-theme",
        "gutter_theme_excludes": [],
        "lint_mode": "save only",
        "linters": {
            "eslint": {
                "@disable": false,
                "args": [],
                "excludes": []
            },
            "jshint": {
                "@disable": false,
                "args": [],
                "excludes": []
            },
            "json": {
                "@disable": false,
                "args": [],
                "excludes": [],
                "strict": true
            },
            "php": {
                "@disable": false,
                "args": [],
                "excludes": []
            },
            "phpcs": {
                "@disable": false,
                "args": [],
                "excludes": [],
                "standard": "PSR2"
            },
            "scss": {
                "@disable": false,
                "args": [],
                "exclude-linter": [
                    "SelectorFormat",
                    "NameFormat"
                ],
                "excludes": [],
                "include-linter": ""
            },
            "shellcheck": {
                "@disable": false,
                "args": [],
                "exclude": "",
                "excludes": []
            }
        },
        "mark_style": "outline",
        "no_column_highlights_line": false,
        "passive_warnings": false,
        "paths": {
            "linux": [],
            "osx": [],
            "windows": []
        },
        "python_paths": {
            "linux": [],
            "osx": [],
            "windows": []
        },
        "rc_search_limit": 3,
        "shell_timeout": 10,
        "show_errors_on_save": false,
        "show_marks_in_minimap": true,
        "syntax_map": {
            "html (django)": "html",
            "html (rails)": "html",
            "html 5": "html",
            "php": "html",
            "python django": "python"
        },
        "warning_color": "DDB700",
        "wrap_find": true
    }
}
```

### Launch Sublime from the command line

http://olivierlacan.com/posts/launch-sublime-text-3-from-the-command-line/

For example:

```bash
sublime ./
```

### Install OneDrive

Install it!

### Mackup

`mackup restore`

### Configure Seil

Configure CapsLock to F13.

### Install Alfred w/ config

* License in Evernote. Config in OneDrive.
* https://www.alfredapp.com/
* Or use [Link Alfred with Cask](http://computers.tutsplus.com/tutorials/perfect-configurations-with-homebrew-and-cask--cms-20768) commands if that works: `brew cask alfred link`

### Configure BetterTouchTool w/ config

License + Config in OneDrive.

## Things to do now

### Check out Scotchbox

https://box.scotch.io/

## Thanks to
* [Adz](http://github.com/skattyadz), [for a bunch of cool things](https://github.com/skattyadz/dotfiles/blob/master/homebrew/Brewfile) which I've added here
* [Rareloop](http://github.com/rareloop), for their own version of this which I've totally nicked
* [Mathias Bynens](http://twitter.com/mathias "Follow @mathias on Twitter") for the [original repo](https://github.com/mathiasbynens/dotfiles) Rareloop used to start this guide.

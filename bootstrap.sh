#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" --exclude "scm_breeze.sh" --exclude "wp-cli.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude "unused/" --exclude ".tm_properties" --exclude "presets/" -av --no-perms . ~
	source ~/.bash_profile
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
    echo "Now run ./scm_breeze.sh to install SCM Breeze."
	fi
fi
unset doIt

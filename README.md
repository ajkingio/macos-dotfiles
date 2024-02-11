# macos-dotfiles
## Requirements
- git
- stow

## Usage
1. Clone repo to $HOME
2. cd macos-dotfiles
3. stow .

## Notes
`userChrome.css` is the [firefox-minima](https://github.com/rockofox/firefox-minima) theme by rockofox with slight modification to always show the address bar.
This will be ignored by stow and needs to be manually configured. Using the steps from rockofox's repo.
1. Create a folder with the name `chrome` in your Firefox profile directory and copy the `userChrome.css` into it. To find your profile directory, go to about:support or about:profiles.
2. Go to about:config and set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`
3. Restart Firefox.

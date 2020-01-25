# Daniels dotfiles

Easily setup a new mac.

## Installation of a new macbook

- Install and set up macOS and update to the latest version.

- Make sure git is installed (usually requires dev tools, just type git in the terminal)

- Move SSH keys to the new computer.
  -- Take all files in `~/.ssh` and airdrop them to the new macbook.

- Check out the repository in your home directory:

```sh
cd
git clone git@github.com:lendai/dotfiles.git
cd dotfiles
./install.sh
```

This will;

- Setup the terminal
- Set a bunch of default values for macOS
- Install the applications I use often

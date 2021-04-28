# Daniels dotfiles

Easily setup a new mac.

## Step 1 - Install all updates from Apple

## Step 2 - Enable iCloud sync

## Step 3 - Install basic apps

Download and install:

- Google Chrome
- 1Password
- Docker https://docs.docker.com/docker-for-mac/install/

## Step 4 - Copy private SSH keys

Move the SSH keys from the previous computer. Run `open ~/.ssh`
Locate `id_rsa` and `id_rsa.pub` and AirDrop them to the new laptop.
Place them in `~/.ssh`

## Step 5 - Install dotfiles repo + run installation

```sh
cd
git clone git@github.com:lendai/dotfiles.git
cd dotfiles
./install.sh
```

This will;

- Setup the terminal
- Set a bunch of default values for MacOS
- Install the applications I use often

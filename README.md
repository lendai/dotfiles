# Daniels dotfiles

Bootstrap a new Mac with Homebrew, Oh My Zsh, shell config, and common desktop apps.

## Prerequisites

Install **Xcode Command Line Tools** first (gives you `git` and compilers). Either run `xcode-select --install` or install full Xcode from the App Store, then accept the license: `sudo xcodebuild -license accept`.

Optional: run Apple system updates:

```sh
softwareupdate --install --recommended
```

## iCloud and accounts

Enable iCloud sync in **System Settings** if you use it.

Connect **Internet Accounts** in System Settings for mail, calendars, and contacts.

## Apps to install manually

Some tools are easier or safer outside this script:

- **Amazon Kindle** (Mac App Store)
- **Adobe Creative Cloud / Photoshop** (Adobe installer)
- **Bambu Studio** / **Bambu Handy** (3D printing; download from bambulab.com)
- **Homey** (Mac App Store or homey.app)
- **Sonos** (Mac App Store or sonos.com)
- **Traeger** (Mac App Store)

The following are now installed via `Brewfile.sh` and no longer need manual installation: 1Password, Docker, Google Chrome, Claude, ChatGPT, Rectangle, Zoom, DBeaver, NordVPN, Microsoft Teams, Plex, Steam, Inkscape, Screen Studio, Whisky, ngrok.

## SSH keys

Prefer **ed25519** keys on new machines:

```sh
ssh-keygen -t ed25519 -C "your_email@example.com"
```

Copy `~/.ssh` from a trusted backup or add the new public key to GitHub/GitLab. Older `id_rsa` keys still work if you migrate them with care.

## Clone and install

Install the repo at **`~/dotfiles`** so paths in `.zshrc` match:

```sh
cd
git clone git@github.com:lendai/dotfiles.git dotfiles
cd dotfiles
./install.sh
```

`install.sh` will:

- Install **Oh My Zsh** non-interactively
- Symlink `~/.zshrc` and `~/.gitconfig` from this repo
- Install **Homebrew** (Apple Silicon: `/opt/homebrew`) if missing
- Run `Brewfile.sh` (CLI tools, dev apps, browsers, chat, AI tools, media, utilities)
- Apply macOS defaults from `macos.sh` and `macos-daniel.sh`
- Install **Node** via nvm (`node.sh`): current nvm, LTS Node, **Corepack** for pnpm/Yarn, and global npm CLIs (git-open, jwt-cli, ttab, eas-cli)
- Install **Python** via pyenv (`python.sh`): Python 3.14, pipx, and poetry

### Command Line Tools ordering

If `install.sh` fails before Homebrew because `git` is missing, install CLT first (`xcode-select --install`), then re-run `./install.sh`.

## Manual macOS shortcuts

Optional: bind **Move focus to next window** (same app) in **System Settings → Keyboard → Keyboard Shortcuts → Keyboard**  
[Apple Stack Exchange reference](https://apple.stackexchange.com/questions/193937/shortcut-for-toggling-between-different-windows-of-same-app)

## Workspace layout (manual clones)

There is no automated "checkout all repos" script. After shell and `git` work, create your tree by hand, for example:

```sh
mkdir -p ~/Code/personal ~/Code/work
cd ~/Code/personal
git clone git@github.com:you/your-repo.git
```

Adjust hostnames, org names, and SSH remotes to match your accounts.

## Cursor and agentic development

- **Cursor** is installed via Homebrew (`cursor` cask) in `Brewfile.sh`. The GUI app may still prompt for updates separately.
- **Shell editor**: `zsh/exports` prefers `cursor -w` as `EDITOR` when the `cursor` CLI is on `PATH` (open Cursor → Command Palette → "Install `cursor` command" if needed).
- **Project rules** for this repo live under [.cursor/rules/](.cursor/rules/). Copy the same pattern into other repositories where you want consistent agent behavior.
- **User settings** (global) live under `~/Library/Application Support/Cursor/User/` — paths can change between Cursor versions; use **Cursor Settings** in the app to confirm.
- **MCP servers** are configured in Cursor (Settings → MCP). Do not try to sync the whole `~/.cursor/projects/` tree from dotfiles; it is machine-local and noisy.

See [AGENTS.md](AGENTS.md) for how agents should modify these bootstrap files.

## Optional shell snippets (not symlinked by default)

Your machine may use **envman**, **pnpm** (`~/Library/pnpm`), or other PATH additions. Uncomment the blocks at the bottom of [dotfiles/.zshrc](dotfiles/.zshrc) if you use those tools.

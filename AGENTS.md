# Agent notes (this repository)

These dotfiles drive a **destructive-ish bootstrap** (`install.sh`, `Brewfile.sh`, `macos.sh`, `code-repos.sh`). When changing them:

- Prefer **idempotent** steps: safe to re-run without surprising data loss, except where the script intentionally replaces symlinks (`zsh.sh`).
- **Never** commit secrets (API keys, tokens, private hostnames). Put clones and remotes in the README as placeholders (`you/your-repo`).
- **Homebrew**: use supported formula and cask names; run `brew info <name>` when unsure. Heavy or security-sensitive tools belong in commented sections in `Brewfile.sh`, not silently removed without discussion.
- **macOS `defaults`**: keys change across OS versions; if a key fails on a new macOS, gate or remove it rather than leaving a broken script.
- **Git identity** lives only in [`dotfiles/.gitconfig`](dotfiles/.gitconfig) (symlinked to `~/.gitconfig`). Do not reintroduce `git config --global` in `install.sh` for name or email.

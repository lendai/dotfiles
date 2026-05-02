#!/bin/sh
# Create ~/Code/{personal,qatech} and clone default work repositories (idempotent).

set -eu

CODE_ROOT="${CODE_ROOT:-$HOME/Code}"

echo "Workspace repos: mkdir ${CODE_ROOT}/{personal,qatech} and clone if missing"
mkdir -p "${CODE_ROOT}/personal" "${CODE_ROOT}/qatech"

clone_if_missing() {
	url="$1"
	dest="$2"
	if [ -e "${dest}/.git" ]; then
		printf '%s\n' "Skip (already a git repo): ${dest}"
		return 0
	fi
	if [ -d "${dest}" ] && [ -n "$(ls -A "${dest}" 2>/dev/null || true)" ]; then
		printf '%s\n' "Skip (non-empty directory, not a git repo): ${dest}" >&2
		return 0
	fi
	git clone "${url}" "${dest}"
}

# QA.tech
clone_if_missing 'git@github.com:QAdottech/acme-signal.git' "${CODE_ROOT}/qatech/acme-signal"
clone_if_missing 'git@github.com:QAdottech/qatech.git' "${CODE_ROOT}/qatech/qatech"

# Personal
clone_if_missing 'git@github.com:lendai/dhltools_v2.git' "${CODE_ROOT}/personal/dhltools_v2"
clone_if_missing 'git@github.com:lendai/sauna.git' "${CODE_ROOT}/personal/sauna"
clone_if_missing 'git@github.com:lendai/dotfiles.git' "${CODE_ROOT}/personal/dotfiles"

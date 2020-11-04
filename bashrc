unset MAILCHECK
export EDITOR="vi"

export MICROPIPENV_NO_LOCKFILE_WRITE=1

addToPath() {
	case ":$PATH:" in
	*":${1}:"*) : ;; # already there
	*) export PATH="${1}:$PATH" ;;
	esac
}

addToPath /sbin
addToPath /usr/sbin
addToPath /usr/local/sbin
addToPath /usr/local/bin
addToPath ~/bin
addToPath ~/.elixir-ls/bin
addToPath ~/.cargo/bin

export PYENV_ROOT="$HOME/.pyenv"
addToPath "$PYENV_ROOT/bin"

. ~/.asdf/asdf.sh
. ~/.asdf/completions/asdf.bash

eval "$(pyenv init - --no-rehash)"
eval "$(pyenv virtualenv-init -)"

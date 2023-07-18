# silence warning for macOS Catalina
export BASH_SILENCE_DEPRECATION_WARNING=1


### Section for sourcing configs
export EXISTING_PATH=$PATH
export PATH=$HOME/.dotfiles

# prompt
source bash-prompt.sh

# aliases
source alias.sh

export PATH=$EXISTING_PATH
### Section for sourcing configs


# PATH

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# For homebrew: brew
eval "$(/opt/homebrew/bin/brew shellenv)"


# bash completion
if [ -f /opt/homebrew/etc/profile.d/bash_completion.sh ]; then
    . /opt/homebrew/etc/profile.d/bash_completion.sh
fi

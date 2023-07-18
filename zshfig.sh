### Section for sourcing configs
export EXISTING_PATH=$PATH
export PATH=$HOME/.dotfiles

# colors and prompt
source zsh-prompt.sh

# aliases
source alias.sh

export PATH=$EXISTING_PATH
### Section for sourcing configs


### Section for eval
# For homebrew: brew
eval "$(/opt/homebrew/bin/brew shellenv)"
### Section for eval


### Section for PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# rust
export PATH="$HOME/.cargo/bin:$PATH"
### Section for PATH


# Default editor
export EDITOR='vim'

# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

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

# For rbenv
eval "$(rbenv init - zsh)"
### Section for eval


### Section for PATH
export PATH=$HOME/bin:/usr/local/bin:$PATH

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# jupyterlab
export PATH="$HOME/.local/bin:$PATH"

# GNU make
# export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# java
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

# Set path for mvim to work on the command line
# For launching MacVim from the terminal
export PATH="/Applications/MacVim.app/Contents/bin:$PATH"
### Section for PATH


# For compiling with OpenMP
export LDFLAGS="-L/opt/homebrew/opt/libomp/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libomp/include"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include:$CPPFLAGS"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


# iTerm2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniconda/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniconda/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

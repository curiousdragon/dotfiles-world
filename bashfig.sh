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

# pandoc
export PATH="/opt/homebrew/bin/pandoc:${PATH}"

# GNU make
export PATH="/opt/homebrew/opt/make/libexec/gnubin:$PATH"

# python
export PATH="/Library/Developer/CommandLineTools/usr/bin/python3:${PATH}"

# rust
export PATH="$HOME/.cargo/bin:$PATH"

# jupyterlab
export PATH="$HOME/.local/bin:$PATH"

# Set path for mvim to work on the command line
# For launching MacVim from the terminal
export PATH="/Applications/MacVim.app/Contents/bin:${PATH}"

# For homebrew: brew
eval "$(/opt/homebrew/bin/brew shellenv)"


# bash completion
if [ -f /opt/homebrew/etc/profile.d/bash_completion.sh ]; then
    . /opt/homebrew/etc/profile.d/bash_completion.sh
fi

# Installed miniconda via homebrew. The resulting block is from running:
# conda init "$(basename "${SHELL}")"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniconda/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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

### Section for prompt
# Load colors
autoload -U colors && colors
setopt PROMPT_SUBST

# zsh prompt
# (conda) [user@host] time location % type commands here!
prompt_components=(
        '%U%B%{$fg[magenta]%}[%n%b%u' # username
        '%{$reset_color%}@' # @
        # '%U%B%{$fg[magenta]%}%m]%b%u ' # host
        '%U%B%{$fg[magenta]%}$(hostname)]%b%u ' # host
        '%{$fg[cyan]%}%*%{$reset_color%} ' # time
        '%B%{$fg[blue]%}%1~%b ' # current folder
        '%{$reset_color%}%% ' # starting prompt %
)
PROMPT=${(j::)prompt_components}
### Section for prompt

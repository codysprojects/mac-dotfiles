
# Options
setopt HIST_IGNORE_SPACE # Do not put any command with a space in front in the history 
setopt INC_APPEND_HISTORY # Append history from all open terminals

# Kiro CLI pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.pre.zsh"

# ENV Variables
#export ZSH="$HOME/.oh-my-zsh"
export EDITOR=vim
export KUBE_EDITOR=vim
#export PATH=/usr/local/bin/:$HOME/bin:$HOME/go/bin:$PATH
#export PATH=/usr/local/bin/:$HOME/bin:$HOME/go/bin:/Users/codyflynn/.opencode/bin:/Users/codyflynn/.local/bin:$PATH
#export PATH=/Users/codyflynn/.opencode/bin:$PATH
export KUBECONFIG=~/.kube/config
export AWS_CLI_AUTO_PROMPT=on-partial
export CLICOLOR=1
export LSCOLORS=Gxfxcxdxbxegedabagacad

eval "$(ssh-agent -s)"

for zsh_file in $HOME/.config/zsh/*.zsh; do
    # source all files ending with.zsh
    source "$zsh_file"
done

## if history no longer works look into how it does in o my
# ZSH Setup
#plugins=(git z aws docker ansible kubectl helm fzf git ssh-agent gcloud)
#source $ZSH/oh-my-zsh.sh
HIST_STAMPS="mm/dd/yyyy"
autoload -Uz +X compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit
zstyle ':completion:*' menu select

# Autocompletion
# fzf is in .config
source <(kubectl completion zsh) #Not needed if plugin is insalled            ## TEST ##
# . <(flux completion bash) # Not neded
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
complete -o nospace -C /Users/codyflynn/.tenv/Terraform/1.11.1/terraform terraform
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/codyflynn/.docker/completions $fpath)

# Setup Starship prompt
[[ -f ~/.config/zsh/starship.zsh ]] && source ~/.config/zsh/starship.zsh
eval "$(starship init zsh)"



# Setup Homebrew
#eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


#autoload -U +X bashcompinit && bashcompinit # Appears to be a duplicate
#complete -o nospace -C /Users/codyflynn/.tenv/Terraform/1.11.1/terraform terraform
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
#fpath=(/Users/codyflynn/.docker/completions $fpath)
# autoload -Uz compinit # Looks to be redundant
#compinit
# End of Docker CLI completions

# opencode
#export PATH=/Users/codyflynn/.opencode/bin:$PATH


# Kiro CLI post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/kiro-cli/shell/zshrc.post.zsh"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

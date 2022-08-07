# Path to your oh-my-zsh installation.
ZSH="$HOME/.oh-my-zsh"
if [ -d "$ZSH" ];then
	export ZSH="$HOME/.oh-my-zsh"
	ZSH_THEME="gruvbox"
	SOLARIZED_THEME="dark"
	source $ZSH/oh-my-zsh.sh
fi
######################
# Aliases
######################
source $HOME/.dotfile/.aliases.sh

######################
# Functions
######################

######################
# Path
######################
APP_PATH=$APP_PATH:$HOME/Application/.vim/bin
APP_PATH=$APP_PATH:$HOME/Application/.tmux/bin
APP_PATH=$APP_PATH:$HOME/Application/.ag/bin
APP_PATH=$APP_PATH:$HOME/Application/.ctags/bin
export PATH=.:$APP_PATH:$PATH

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.tmux.config ] && source ~/tmux.config

# Configure Terminal to start tmux by default
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
	    tmux attach -t default || tmux new -s default
fi




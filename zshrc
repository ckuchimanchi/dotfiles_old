#work remains to get rid of dotfiles_root and see how it can be made independent
#for now using it to refer to antigen.sh

export DOTFILES_ROOT="$HOME/dotfiles"
# export FZF_DEFAULT_COMMAND='fd --type f '
export FZF_DEFAULT_COMMAND='rg --files'
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border --inline-info'
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :500 {}'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -100'"

export EDITOR=vim


source $DOTFILES_ROOT/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle osx
antigen bundle command-not-found
antigen bundle z
antigen bundle zsh-users/zsh-syntax-highlighting

antigen theme romkatv/powerlevel10k

antigen apply

for file in "$DOTFILES_ROOT"/zshrc.d/*; do
  source "$file"
done

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

[[ -f ~/.fzf.zsh ]] && source ~/.fzf.zsh

[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local


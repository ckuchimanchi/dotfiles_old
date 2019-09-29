export DOTFILES_ROOT="$HOME/dotfiles"

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

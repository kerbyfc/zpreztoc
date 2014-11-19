#Load themes from kdr and from user's custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=($HOME/.kdr/zsh/prezto-themes $HOME/.zsh.prompts $fpath)
promptinit

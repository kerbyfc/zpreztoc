#Load themes from kdr and from user's custom prompts (themes) in ~/.zsh.prompts
autoload promptinit
fpath=($HOME/.zprezto/zpreztoc/zprezto-themes $HOME/.zsh.prompts $fpath)
promptinit

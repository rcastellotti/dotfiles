This dotfiles are based on [this](https://www.atlassian.com/git/tutorials/dotfiles) concept.

+ [Download vscode](https://code.visualstudio.com/docs/setup/linux)
+ [JetBrains Mono](https://www.jetbrains.com/lp/mono/)
+ ssh keys on github/gitlab
+ `sudo apt install neovim ranger zsh bat grc`
+ ```bash
	git config --global user.name "rcastellotti"
	git config --global user.email "me@rcastellotti.dev"
	```
+ ```bash 
	git clone https://github.com/nojhan/liquidprompt .conf/zsh/liquidprompt
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .conf/zsh/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions .conf/zsh/zsh-autosuggestions
	```
+ ```bash
	alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
	config config status.showUntrackedFiles no
	```
+ ```bash
	chsh -s /usr/bin/zsh
	ln-sf /usr/bin/batcat ~/scripts/bat
	```
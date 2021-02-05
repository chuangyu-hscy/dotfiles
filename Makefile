zsh_setup:
	cp .zshrc ~/.zshrc
	source ~/.zshrc && clear

pom:
	git push https://github.com/chuangyu-hscy/dotfiles.git master

utd:
	git commit -am "UptoDate"

tmux_setup:
	cp .tmux.conf ~/.tmux_conf && clear

vim_setup:
	cp .vimrc ~/.vimrc

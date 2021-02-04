zsh_setup:
	cp .zshrc ~/.zshrc
	source ~/.zshrc
	echo "Source .zshrc file Completed"
	clear

pom:
	git push https://github.com/chuangyu-hscy/dotfiles.git master

utd:
	git commit -am "UptoDate"

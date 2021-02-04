zsh_setup:
	cp .zshrc ~/.zshrc
	source ~/.zshrc
	echo "Source .zshrc file Completed"
	clear

push_origin_master:
	git push origin master

uptodate:
	git commit -am "UptoDate"

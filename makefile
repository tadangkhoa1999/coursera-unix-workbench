makereadme : guessinggame.sh
	touch README.md
	echo "Title of the project: Bash, Make, Git, and GitHub Prev" > README.md
	echo "\nDate:" >> README.md
	date >> README.md
	echo "\nNumber of lines file guessinggame.sh contains:" >> README.md
	cat guessinggame.sh | wc -l >> README.md

README.md:
	echo "# Guessinggame" > README.md
	echo "## Date and time at which make was run:" >> README.md
	date >> README.md
	echo "## Number of lines of code contained in guessinggame.sh:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
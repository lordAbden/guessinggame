# Variables
README = README.md
SCRIPT = guessinggame.sh

all: $(README)

$(README): $(SCRIPT)
	echo "# Guessing Game Project" > $(README)
	echo "\n## Date and Time" >> $(README)
	echo "`date`" >> $(README)
	echo "\n## Number of Lines in guessinggame.sh" >> $(README)
	echo "`wc -l < $(SCRIPT)`" >> $(README)

clean:
	rm -f $(README)

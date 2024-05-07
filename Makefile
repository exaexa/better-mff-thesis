NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS=-pdflua #you can also use -pdf for forcing pdflatex, if required
LATEXMK=latexmk $(LATEXMKOPTS)

all:
	$(LATEXMK) $(NAME)
	$(LATEXMK) $(ABSTRACT)-cz
	$(LATEXMK) $(ABSTRACT)-en

clean:
	$(LATEXMK) -C

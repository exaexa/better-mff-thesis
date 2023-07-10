NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS=#-pdflua #enable for forcing luatex
LATEXMK=latexmk $(LATEXMKOPTS)

all:
	$(LATEXMK) $(NAME)
	$(LATEXMK) $(ABSTRACT)-cz
	$(LATEXMK) $(ABSTRACT)-en

clean:
	$(LATEXMK) -C

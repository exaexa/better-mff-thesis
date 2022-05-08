NAME=thesis
ABSTRACT=abstract
LATEXMKOPTS=#-pdf #enable for forcing pdflatex
LATEXMK=latexmk $(LATEXMKOPTS)

all:
	$(LATEXMK) $(NAME)
	$(LATEXMK) $(ABSTRACT)-cz
	$(LATEXMK) $(ABSTRACT)-en

clean:
	$(LATEXMK) -C

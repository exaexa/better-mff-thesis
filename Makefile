PDFS=thesis.pdf abstract-en.pdf abstract-cz.pdf

all: $(PDFS)

thesis.pdf: thesis.tex $(wildcard *.tex) refs.bib thesis.xmpdata
	pdflatex $<
	bibtex thesis
	pdflatex $<
	pdflatex $<

abstract-%.pdf: abstract-%.tex abstract-%.xmpdata metadata.tex
	pdflatex $<

clean:
	rm -f *.log *.dvi *.aux *.toc *.lof *.lot *.out *.bbl *.blg *.xmpi
	rm -f $(PDFS)

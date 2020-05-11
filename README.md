
# A slightly improved thesis template

What's new:

- modern packages (biblatex, cleveref, better fonts)
- some useful goodies
- less confusing directory structure
- slightly more useful examples (figures, diagrams, tables, code listings)
- autobuilding of abstract PDF/A from metadata
- university-wide variants of the front page
- Czech localization with nicely named references

See the [pre-built version](build/thesis.pdf) for details

## How-to

1. Type `make`, check that everything compiles. You should get a `thesis.pdf` that passes the PDF/A validation. If not, complain.
2. Fill in `metadata.tex` and all `xmpdata` files.
3. Look at the example code (there are several hints), remember it, erase it.
4. Write the thesis.
5. Submit and defend the thesis.

## PDF/A

With a bit of luck, you should get PDF/A right out of LaTeX.

A working PDF/A validator that can point out exact problems is here: https://github.com/mff-cuni-cz/cuni-thesis-validator

Common PDF/A problems include:

- imported PDF pictures that are not PDF/A.
- the used font does not support PDF/A (including the fonts in imported pictures). See https://martin.hoppenheit.info/blog/2018/pdfa-validation-and-inconsistent-glyph-width-information/ for a very ugly case.

Solutions:

- use `pdfa.sh` to convert PDFs to PDF/A-compatible form the "hard way" (although this does _not_ retain the PDF/A metadata mark, see comments in the script).
- read the commentary by Martin Mareš (that describes most of the common problems) here: https://mj.ucw.cz/vyuka/bc/pdfaq.html
- use `pdfa.sh` as a last resort for `thesis.pdf` if everything other fails

## Ideas/improvements/more examples?

Pull requests welcome.

## License?

Everything in this repository is released into the public domain, not encumbered by any kind of copyright at all.

Parts of the code (esp. the title page) are based on the original template (available from the faculty website) by Martin Mareš, Arnošt Komárek, and Michal Kulich. (Thanks!)

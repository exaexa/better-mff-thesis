
# A slightly improved thesis template

What's new:

- modern packages (biblatex, cleveref, better fonts)
- less confusing directory structure
- slightly more useful examples (figures, diagrams, tables, code listings), structure hints, some goodies
- autobuilding of abstract PDF/A from metadata
- university-wide variants of the front page (nature faculty&bioinformatics!)
- Czech localization with nicely named references

See the [pre-built version](build/thesis.pdf) for details

## How-to

1. Type `make`, check that everything compiles. You should get a `thesis.pdf` that passes the PDF/A validation. If not, complain.
2. Fill in `metadata.tex` and all `xmpdata` files.
3. Look at the example code (there are several hints), remember it, erase it.
4. Write the thesis.
5. Submit and defend the thesis.

### Installing LaTeX

LaTeX installation may be hard (especially on various substandard operating systems). On most BSD and GNU-style Linux distributions, it should be sufficient to install some random `texlive-*` packages (and add more if non-standard TeX functionality is required); see e.g. [a complete list for Debian](docker/Dockerfile).

- For a single-user distribution on unix, use the provided [installation script](https://www.tug.org/texlive/quickinstall.html).
- On windows, use [MiKTeX](https://www.tug.org/texlive/windows.html).
- On Mac, use any suitable variant of [MacTeX](https://www.tug.org/mactex/).

Optionally, you can use a Docker container with TeX. You can either build the image yourself from the supplied `Dockerfile`:
```sh
cd docker
docker build -t exaexa/latex .
```

...or get a pre-built copy (which is usually much faster:
![image size](https://img.shields.io/docker/image-size/exaexa/latex)
)
```sh
docker pull exaexa/latex
```

After that, you should be able to compile the thesis using (roughly) this command:
```sh
docker run -u $UID -ti --rm -v $PWD:/th -w /th exaexa/latex make
```

## PDF/A

With a bit of luck, you should get a valid PDF/A right out of LaTeX.

A PDF/A validator that can point out exact problems is available here: https://github.com/mff-cuni-cz/cuni-thesis-validator

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

Parts of the code (esp. the title page) are based on the original template (available from the faculty website) by Martin Mareš, Arnošt Komárek, and Michal Kulich. (Thanks!)

University and faculty logos are a property of the respective universities and faculties.

Everything else in this repository is released into the public domain, not encumbered by any kind of copyright at all.

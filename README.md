
# A slightly improved thesis template

What's new:

- modern packages (biblatex, cleveref, better fonts)
- less confusing directory structure
- slightly more useful examples (figures, diagrams, tables, code listings),
  structure&writing hints, some goodies
- autobuilding of PDF/A abstracts directly from metadata
- multiple variants of the front page
  - MFF with the new logo
  - "traditional" UK variant
  - Nature faculty & bioinformatics
- Czech localization with properly translated references
- Automated docker-based & CI build options

See the [pre-built version](https://exaexa.github.io/better-mff-thesis/thesis.pdf) for details.

## CI configuration

The repository contains valid configuration for both *GitLab* CI and the *GitHub* actions.
No matter what Git hosting you use, you can always download latest version of your thesis right from the artifacts!
The GitHub version additionally pushes the files to GitHub pages to enabler easier sharing (incl. the link above); you can disable that by removing `.github/workflow/pages.yml`.

## How-to

1. Type `make`, check that everything compiles. You should get a `thesis.pdf` that passes the [PDF/A validation](https://github.com/mff-cuni-cz/cuni-thesis-validator). If not, complain.
2. Fill in `metadata.tex` and all `xmpdata` files.
3. Look at the example code (there is plenty of advice to follow), then erase it.
4. Write the thesis.
5. Submit and defend the thesis.

### Installing LaTeX

LaTeX installation may be hard (especially on various substandard operating systems).
On most BSD and GNU-style Linux distributions, it should be sufficient to install some random `texlive-*` packages (and add more if non-standard TeX functionality is required); see e.g. [a complete list for Debian](docker/Dockerfile).

- For a single-user distribution on unix, use the provided [installation script](https://www.tug.org/texlive/quickinstall.html).
- On windows, use [MiKTeX](https://www.tug.org/texlive/windows.html).
- On Mac, use any suitable variant of [MacTeX](https://www.tug.org/mactex/).

Optionally, you can use a Docker container with TeX. You can either build the image yourself from the supplied `Dockerfile`:
```sh
cd docker
docker build -t betterthesis/latex .
```

...or get some pre-built one (which is usually much faster:
![image size](https://img.shields.io/docker/image-size/aergus/latex)
)
```sh
docker pull aergus/latex
```

After that, you should be able to compile the thesis using this command (change the container name to `betterthesis/latex` in case you built it yourself):
```sh
docker run -u $UID -ti --rm -v $PWD:/th -w /th aergus/latex make
```

## PDF/A

With a bit of luck, you should get a valid PDF/A right out of LaTeX. If you are using GitHub actions or GitLab CI, the CI will run the PDF/A verifier automatically for you.

A PDF/A validator that can point out exact problems is available here: https://github.com/mff-cuni-cz/cuni-thesis-validator

Common PDF/A problems include:

- imported PDF pictures that are not PDF/A.
- the used font does not support PDF/A (including the fonts in imported pictures). See https://martin.hoppenheit.info/blog/2018/pdfa-validation-and-inconsistent-glyph-width-information/ for a very ugly case.

Solutions:

- use `pdfa.sh` to convert the imported picture PDFs to PDF/A-compatible form the "hard way" (although this does _not_ retain the PDF/A metadata mark, see comments in the script)
- read the commentary by Martin Mareš (that describes most of the common problems) here: https://mj.ucw.cz/vyuka/bc/pdfaq.html
- as a last resort if everything other fails, use `pdfa.sh` for the whole `thesis.pdf`

## Ideas/improvements/more examples?

Pull requests welcome.

## License?

Parts of the code (esp. the title page) are based on the original template (available from the faculty website) by Martin Mareš, Arnošt Komárek, and Michal Kulich.
Small and useful fixes were coded or pointed out by Vít Kabele, Jan Joneš, Gabriela Suchopárová, Evžen Wybitul, and many others.
(Many thanks to everyone involved!)

University and faculty logos are a property of the respective universities and faculties.

Everything else in this repository is released into the public domain, not encumbered by any kind of copyright at all.

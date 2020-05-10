#!/bin/bash
# Use this script to convert random PDFs to PDF/A (e.g. figures).
# Unfortunately, ghostscript can not retain the PDF/A metadata. In result, if
# you use this on the thesis, it _will_ become PDF/A compliant (and SIS will
# accept it), but won't contain the magic PDF/A "stamp" and will show only as
# normal PDF-1.4. :(
gs -dPDFA=1 \
   -dBATCH \
   -dNOPAUSE \
   -sProcessColorModel=DeviceCMYK \
   -sColorConversionStrategy=UseDeviceIndependentColor \
   -sDEVICE=pdfwrite \
   -dPDFACompatibilityPolicy=3 \
   -sOutputFile="pdfa-$1" \
   "$1"

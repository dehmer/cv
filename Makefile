.PHONY: clean prune all install
NOW := $(shell date +"%Y%m%d-%H%M" | tr ' :' '__')

all: cv.de-at.pdf cv.en-us.pdf

cv.de-at.pdf: \
	vocational/*.de.tex \
	contracting/*.de.tex \
	oss/*.de.tex \
	skills/*.de.tex \
	skills/*.xx.tex \
	cv.de-at.tex
	latexmk -silent -pdf -pdflatex="pdflatex -interaction=nonstopmode" cv.de-at.tex

cv.en-us.pdf: \
	vocational/*.en.tex \
	contracting/*.en.tex \
	oss/*.en.tex \
	skills/*.en.tex \
	skills/*.xx.tex \
	cv.en-us.tex
	latexmk -silent -pdf -pdflatex="pdflatex -interaction=nonstopmode" cv.en-us.tex

# clean intermediate files, keep PDFs
clean:
	latexmk -silent -c

# clean all, including PDFs
prune:
	latexmk -silent -C

# copy PDFs to iCloud drive
install:
	cp cv.en-us.pdf ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/cv/cv.en-us.$(NOW).pdf
	cp cv.de-at.pdf ~/Library/Mobile\ Documents/com\~apple\~CloudDocs/cv/cv.de-at.$(NOW).pdf

.PHONY: clean all

all: cv.de-at.pdf cv.en-us.pdf

cv.de-at.pdf: \
	vocational/SYNCPOINT.de.tex \
	vocational/GUSTAV.de.tex \
	vocational/BOOST.de.tex \
	vocational/FFT-2.de.tex \
	vocational/PV-METERING.de.tex \
	vocational/KOSINUS.de.tex \
	vocational/COVID-19.de.tex \
	vocational/PIONEER.de.tex \
	vocational/GASPORTAL.de.tex \
	vocational/FFT-1.de.tex \
	vocational/COMMGW.de.tex \
	vocational/FUEZNATLV.de.tex \
	vocational/PHOENIX.de.tex \
	vocational/MACH-CARGO.de.tex \
	vocational/LOGIN.de.tex \
	vocational/HIS.de.tex \
	contracting/5-POINT.de.tex \
	contracting/HISERV.de.tex \
	contracting/SYSTAN.de.tex \
	contracting/DEBIS.de.tex \
	oss/SIGNAL.de.tex \
	oss/SIGNS.de.tex \
	oss/WKX.de.tex \
	oss/ODIN.de.tex \
	cv.de-at.tex
	latexmk -silent -pdf -pdflatex="pdflatex -interaction=nonstopmode" cv.de-at.tex

cv.en-us.pdf: \
	vocational/SYNCPOINT.en.tex \
	vocational/GUSTAV.en.tex \
	vocational/BOOST.en.tex \
	vocational/FFT-2.en.tex \
	vocational/PV-METERING.en.tex \
	vocational/KOSINUS.en.tex \
	vocational/COVID-19.en.tex \
	vocational/PIONEER.en.tex \
	vocational/GASPORTAL.en.tex \
	vocational/FFT-1.en.tex \
	vocational/COMMGW.en.tex \
	vocational/FUEZNATLV.en.tex \
	vocational/PHOENIX.en.tex \
	vocational/MACH-CARGO.en.tex \
	vocational/LOGIN.en.tex \
	vocational/HIS.en.tex \
	contracting/5-POINT.en.tex \
	contracting/HISERV.en.tex \
	contracting/SYSTAN.en.tex \
	contracting/DEBIS.en.tex \
	oss/SIGNAL.en.tex \
	oss/SIGNS.en.tex \
	oss/WKX.en.tex \
	oss/ODIN.en.tex \
	cv.en-us.tex
	latexmk -silent -pdf -pdflatex="pdflatex -interaction=nonstopmode" cv.en-us.tex

clean:
	latexmk -silent -c

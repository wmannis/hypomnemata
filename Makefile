# $Revision: 1.2 $

%.pdf: %.tex
	xelatex $< $@

all: hypomnemata.pdf

hypomnemata.pdf: hypomnemata.tex changes.tex lexfun.tex

share:
	cp hypomnemata.pdf ~/Dropbox/Goodreader/.
	tar cvfz hypomnemata.tgz *.tex Makefile
	mv hypomnemata.tgz ~/Dropbox/bkup/.

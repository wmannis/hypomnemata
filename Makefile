# $Revision: 1.2 $

%.pdf: %.tex
	xelatex $< $@

all: hypomnemata.pdf

hypomnemata.pdf: hypomnemata.tex changes.tex lexfun.tex

share:
	cp hypomnemata.pdf ~/Dropbox/Goodreader/.
	scp hypomnemata.pdf pdx1-shared-a1-32.dreamhost.com:/home/annis/lachi-lochu.conlang.org/conlang/hypomnemata.pdf
	tar cvfz hypomnemata.tgz *.tex Makefile
	mv hypomnemata.tgz ~/Proton/bkup/.

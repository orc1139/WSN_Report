main=report

pdflatex=pdflatex
dvilatex=latex
bibtex=bibtex
viewer=xpdf

latex=$(pdflatex)

pdf:
	$(pdflatex) -draftmode $(main)
	$(bibtex) $(main)
	$(pdflatex) -draftmode $(main)
	$(pdflatex) $(main)

dvi:
	$(dvilatex) -draftmode $(main)
	$(bibtex) $(main)
	$(dvilatex) -draftmode $(main)
	$(dvilatex) $(main)

all:	pdf
	

ref:
	$(latex) $(main)
	$(index) $(main)

view:	pdf
	$(viewer) $(main).pdf
clean:
	rm -f *~
	rm -f */*.aux
	rm -f *.bbl *.toc *.lot *.lof *.blg *.aux *.log *.idx *.out *.pdfsync

dist-clean: clean
	rm -f *.pdf *.dvi

archive: dvi pdf clean
	tar cfvj thesis-`date +%Y%m%d`.tar.bz2 .
	make dist-clean

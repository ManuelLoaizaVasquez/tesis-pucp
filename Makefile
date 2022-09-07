clean:
	rm -f pdf/tesis.pdf
	rm -f document.*
	rm -f tex/*.aux

all: tex/*.tex bib/bibliography.bib
	pdflatex base/document.tex
	bibtex document
	pdflatex base/document
	pdflatex base/document
	rm -f pdf/tesis.pdf
	mv document.pdf tesis.pdf
	mv tesis.pdf pdf/
	rm -f document.*
	rm -f tex/*.aux

all: pdf/document.pdf

clean:
	rm -f pdf/document.pdf
	rm document.*

pdf/document.pdf: tex/*.tex
	pdflatex base/document.tex
	mv document.pdf pdf/
	rm document.*

# pdf/document.pdf: tex/*.tex bib/bibliography.bib
# 	pdflatex base/document.tex
# 	bibtex document
# 	pdflatex base/document
# 	mv document.pdf pdf/
# 	rm document.*
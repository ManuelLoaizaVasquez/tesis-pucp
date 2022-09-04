all: pdf/tesis.pdf

clean:
	rm pdf/tesis.pdf
	rm document.*

pdf/tesis.pdf: tex/*.tex
	pdflatex base/document.tex
	rm pdf/tesis.pdf
	mv document.pdf tesis.pdf
	mv tesis.pdf pdf/
	rm document.*

# pdf/document.pdf: tex/*.tex bib/bibliography.bib
# 	pdflatex base/document.tex
# 	bibtex document
# 	pdflatex base/document
# 	mv document.pdf pdf/
# 	rm document.*
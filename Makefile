
MAIN = tutorial

open: $(MAIN).pdf
	open $<

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	rm *.toc *.log *.out *.pdf *.aux *.nav *.vrb *.snm *~

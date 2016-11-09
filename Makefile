
MAIN = tutorial

all: $(MAIN).pdf.open

%.open: %
	open $<

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

clean:
	rm *.toc *.log *.out *.pdf *.aux *.nav *.vrb *.snm *~

.SECONDARY:

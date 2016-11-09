
# Download Augustus gene predictions for marmoset
augustusGene.sql augustusGene.txt.gz:
	curl -O http://hgdownload.cse.ucsc.edu/goldenPath/calJac3/database/$@

# Unzip the gene predictions
# Keep the original .gz file so make doesn't re-download it every time
%.txt: %.txt.gz
	gunzip --keep $<

# The file augustusGene.sql shows that the exon count is the 9th field
numExons.txt: augustusGene.txt
	cat $< | perl -e 'while(<>) { @f = split; print $$f[8], "\n" }' >$@

# Run an R script to plot the frequency distribution
exonFreqs.pdf: numExons.txt plot.R
	R -f plot.R


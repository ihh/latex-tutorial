require("ggplot2")
exons <- read.csv("numExons.txt")
plot <- qplot(exons,geom="histogram",binwidth=1,main="Marmoset exon count distribution") + scale_y_continuous() + scale_x_continuous(limits=c(0,100)) + xlab("Number of exons")
ggsave ("exonFreqs.pdf", plot)

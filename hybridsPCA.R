###################################################
##Author: Alan Couch
##Institute for Applied Ecology, University of Canberra ACT
##Last Updated: 8 June 2016
##Feel free to reuse.

#This script is to produce a PCA plot using snp data and meta data from a genlight object. 
#More detail on the data and product can be seen at: #https://github.com/dnatheist/Maccullochella-hybridisation
###################################################
#PCA plot
require(adegenet)
require(ggplot2)
load("snpsHybridData")
system.time(pca1 <- glPca(gl[,], parallel=F, nf=3))
gg <- data.frame(pca1$scores,cluster=pop(gl))
gg$labels  <- rownames(gg)
gg$labels<-gsub("Narranderah","Narrandera",gg$labels)
gg$labels<-gsub("Bendora20130408","Bendora",gg$labels)
ggplot(gg, aes(x=PC1, y=PC2))+   
        geom_text(aes(label=labels, color=factor(cluster)),show.legend=FALSE,size=8) +
        theme_classic()+
        geom_hline(yintercept=0,linetype=2) +
        geom_vline(xintercept=0,linetype=2) +    
        annotate("text", x = 0, y = -0.3, size=10, label = "Murray Cod") +
        annotate("text", x = 5, y = 1.4, size=8, label = "♀MC")+
        annotate("text", x = 21, y = 0.2, size=8, label = "♀MC")+
        annotate("text", x = 75, y = -1, size=10, label = "Trout Cod") +
        annotate("text", x = 10, y = 4, size=10, label = "F1xMC Backcross") +
        annotate("text", x = 25, y = 0.9, size=10, label = "F1 Hybrid") +
        xlim(-5,80)+
        xlab("Principle Component 1")+
        ylab("Principle Component 2")

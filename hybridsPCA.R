###################################################
##Author: Alan Couch
##Institute for Applied Ecology, University of Canberra ACT
##Last Updated: 7 June 2016
##Feel free to reuse.

#This script is to produce a PCA plot using snp data and meta data from a genlight object. #More detail on the data and product can be seen at: #https://github.com/dnatheist/Maccullochella-hybridisation
###################################################

#PCA plot
gl <- gl.dart
system.time(pca1 <- glPca(gl[,], parallel=F, nf=3))
require(ggplot2)
gg <- data.frame(pca1$scores,cluster=pop(gl))
gg$labels  <- rownames(gg)
gg$labels<-gsub("Narranderah","Narrandera",gg$labels)
gg$labels<-gsub("Bendora20130408","Bendora",gg$labels)
ggplot(gg, aes(x=PC1, y=PC2))+   geom_text(aes(label=labels, color=factor(cluster)),hjust=-0.2, size=8) +     geom_hline(yintercept=0,linetype=2) +     geom_vline(xintercept=0,linetype=2) +    scale_color_discrete(name="Cluster") + ggtitle("Principal Components - Maccullochella Hybridization ")+ theme(plot.title = element_text(lineheight=.8, face="bold", size=29)) + annotate("text", x = 0, y = -0.3, size=10, label = "Murray Cod") + annotate("text", x = 8, y = 1.4, size=8, label = "♀")+ annotate("text", x = 24, y = 0.2, size=8, label = "♀")+annotate("text", x = 75, y = -1, size=10, label = "Trout Cod") + annotate("text", x = 10, y = 4, size=10, label = "F1 x Backcross") + annotate("text", x = 25, y = 0.9, size=10, label = "F1 Hybrid") +xlim(-5,90)+theme(axis.text=element_text(size=15), axis.title=element_text(size=15,face="bold"),legend.text = element_text(size = 20),legend.title = element_text(size = 20)) 

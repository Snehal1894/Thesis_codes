require(ggplot2)
require(reshape2)
require(plotrix)

par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#stability
syndrome = c(-7.25,-4.75,-4.73,-2.74,-3.95,-3.98,-4.99,-3.12,-5.4,-4.38,-4.56,-5.7)
cancer = c(-5.4,-5,-4.11,-6.17,-4.12,-5.5,-2.73,-3.86,-6.02,-6.42,-1.24,-2.82,-3.69,-5.14)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)      

#mutant-WT
#t-test
syndrome = c(-2.4,0.1,0.12,2.11,0.9,0.87,-0.14,1.73,-0.55,0.47,0.29,-0.85)
cancer = c(-0.55,-0.15,0.74,-1.32,0.73,-0.65,2.12,0.99,-1.17,-1.57,3.61,2.03,1.16,-0.29)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)  

#Histograms
l=list(abs(cancer),abs(syndrome))
multhist(l,breaks=c(0,0.46,0.92,max(unlist(l))), 
         names.arg=c("0-0.46","0.46-0.92",">0.92"), 
         col = c("red","blue"), xlab = "Mutant-Wildtype(kcal/mol)",
         ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5),
       x.intersp =0.4,y.intersp=0.8,cex=1.2)
multhist(l,breaks=c(0,0.8,1.6,max(unlist(l))), 
         names.arg=c("0-0.8","0.8-1.6",">1.6"), 
         col = c("red","blue"), xlab = "Mutant-Wildtype(kcal/mol)",
         ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5), 
       x.intersp =0.4,y.intersp=0.8,cex=1.2)

#FoldX
#t-test
syndrome = c(-0.522624,0.209906,0.220434,2.22817,1.0186,1.14309,0.450132,1.72913,-0.496762,0.536941,1.90395,-0.853792)
cancer = c(0.413131,-0.140033,1.0452,-1.20724,0.800792,0.322243,2.98507,1.17217,0.457548,-1.5022,5.64689,2.02666,1.16715,-0.289966)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)      

#Histogram
l=list(abs(cancer),abs(syndrome))
multhist(l,breaks=c(0,0.46,0.92,max(unlist(l))), 
         names.arg=c("0-0.46","0.46-0.92",">0.92"), 
         col = c("red","blue"), xlab = "FoldX(kcal/mol)",ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5),
       x.intersp =0.4,y.intersp=0.8,cex=1.2)
multhist(l,breaks=c(0,0.8,1.6,max(unlist(l))), names.arg=c("0-0.8","0.8-1.6",">1.6"), 
         col = c("red","blue"), xlab = "FoldX(kcal/mol)",ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5), 
       x.intersp =0.4,y.intersp=0.8,cex=1.2)


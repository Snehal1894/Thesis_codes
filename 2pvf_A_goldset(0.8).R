require(ggplot2)
require(reshape2)
require(plotrix)

par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#Gold Set with calculated ddG (mutant-WT)
#stability
syndrome = c(-7.25,-2.74,-3.95,-3.98,-3.12,-5.7)
cancer = c(-6.17,-2.73,-3.86,-6.02,-6.42,-1.24,-2.82,-3.69)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)   

#mutant-WT
#t-test
syndrome = c(-2.4,2.11,0.9,0.87,1.73,-0.85)
cancer = c(-1.32,2.12,0.99,-1.17,-1.57,3.61,2.03,1.16)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)   

#Histogram
l=list(abs(cancer),abs(syndrome))
multhist(l,breaks=c(0.8,1.6,5,max(unlist(l))), names.arg=c("0.8-1.6","1.6-5",">5"), 
         col = c("red","blue"), xlab = "Mutant-Wildtype(kcal/mol)",
         ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5), 
       x.intersp =0.4,y.intersp=0.8,cex=1.2)

#Gold Set with FoldX
#stability
syndrome = c(-2.74,-3.95,-3.98,-3.12,-4.56,-5.7)
cancer = c(-4.11,-6.17,-4.12,-2.73,-3.86,-6.42,-1.24,-2.82,-3.69)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)   

#FoldX
#t-test
syndrome = c(2.22817,1.0186,1.14309,1.72913,1.90395,-0.853792)
cancer = c(1.0452,-1.20724,0.800792,2.98507,1.17217,-1.5022,5.64689,2.02666,1.16715)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)   

#Histogram
l=list(abs(cancer),abs(syndrome))
multhist(l,breaks=c(0.8,1.6,5,max(unlist(l))),
         names.arg=c("0.8-1.6","1.6-5",">5"), 
         col = c("red","blue"), xlab = "FoldX(kcal/mol)",ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5), 
       x.intersp =0.4,y.intersp=0.8,cex=1.2)

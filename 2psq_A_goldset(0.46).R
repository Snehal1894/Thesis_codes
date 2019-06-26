require(ggplot2)
require(reshape2)
require(plotrix)

par(mar=c(5.1, 4.1, 4.1, 8.1), xpd=TRUE)
#Gold Set based on calculated ddG (mutant-WT)
#stability
syndrome = c(-12.17,-9.83,-10.74,-9.86,-10.1,-12.14,-12.11,-12.63,-12.01,-13.19,-15.83)  
cancer = c(-12.02,-10.74,-9.69,-10.55,-13.63,-1.21,-9.18,-9.6)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)
wilcox.test(syndrome,cancer)

#mutant-WT
#t-test
syndrome = c(-0.64,1.7,0.79,1.67,1.43,-0.61,-0.58,-1.1,-0.48,-1.66,-4.3)
cancer =   c(-0.49,0.79,1.84,0.98,-2.1,10.32,2.35,1.93)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)
wilcox.test(syndrome,cancer)

#Histogram
l=list(abs(cancer),abs(syndrome))
multhist(l,breaks=c(0.46,0.92,5,max(unlist(l))), 
         names.arg=c("0.46-0.92","0.92-5",">5"), 
         col = c("red","blue"), xlab = "Mutant-Wildtype(kcal/mol)",
         ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5),
       x.intersp =0.4,y.intersp=0.8,cex=1.2)

#Gold Set based on FoldX
#stability
syndrome = c(-12.17,-9.83,-10.74,-9.86,-10.1,-12.63,-15.83) 
cancer = c(-10.74,-11.18,-9.69,-10.55,-13.63,-1.21,-9.18,-9.6)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)
wilcox.test(syndrome,cancer)

#FoldX
#t-test
syndrome = c(-0.644175,2.88411,2.31738,2.72189,2.20475,-1.09612,-2.77075)
cancer = c(0.79778,1.53597,2.90628,1.12599,-0.648642,10.3186,2.35022,1.93416)
shapiro.test(syndrome)
shapiro.test(cancer)
t.test(syndrome,cancer)
wilcox.test(syndrome,cancer)

#Histogram
l=list(abs(cancer),abs(syndrome))
multhist(l,breaks=c(0.46,0.92,5,max(unlist(l))), 
         names.arg=c("0.46-0.92","0.92-5",">5"), 
         col = c("red","blue"), xlab = "FoldX(kcal/mol)",ylab="Number of Mutations")
legend("topright",c("Cancer","Syndrome"),inset=c(-0.2,0),
       col=c("red","blue"),pch=15,bty="n", text.width = c(0.5, 0.5),
       x.intersp =0.4,y.intersp=0.8,cex=1.2)
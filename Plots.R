library(xlsx)
library(ggplot2)
df = read.xlsx("C:/Users/Snehal\ Sambare/Downloads/Thesis/Plotdata.xlsx", sheetName = "2pvf_A")
#df_B = read.xlsx("C:/Users/Snehal\ Sambare/Downloads/Thesis/FGFR_domian_analysis.xlsx", sheetName = "Mutations_in_B")

#mutations on Y axis
ggplot(df, aes(x=df$SrNo,y=Stability))+ geom_line(y=-4.85, color="Black") + geom_point(aes(y=df$Stability,shape=Class,color=Class)) + scale_x_discrete(name="Mutations",limit=df$Mutations)+theme(axis.text.x = element_text(angle=45,hjust = 1,vjust = 1))
ggplot(df, aes(x=df$SrNo,y=ddG.FoldX.))+ geom_line(y=-0.8, color="Black")+ geom_line(y=0.8, color="Black") + geom_point(aes(y=df$ddG.FoldX.,shape=Class,color=Class)) + scale_x_discrete(name="Mutations",limit=df$Mutations)+theme(axis.text.x = element_text(angle=45,hjust = 1,vjust = 1))
#ggplot(df, aes(x=df_A$Sr.No,y=Delta_interaction))+ geom_line(y=-0.8, color="Black")+ geom_line(y=0.8, color="Black") + geom_point(aes(y=df_A$Delta_interaction,shape=Class)) + geom_point(aes(y=df_B$Delta_interaction,shape=Class,color=Class)) + scale_x_discrete(name="Mutations",limit=df_A$Mutation)+theme(axis.text.x = element_text(angle=45,hjust = 1,vjust = 1))
ggplot(df, aes(x=df$SrNo,y=ddG(Mutant-WT)))+ geom_line(y=-0.8, color="Black")+ geom_line(y=0.8, color="Black")+ geom_point(aes(y=df$ddG.mutant.WT,shape=Class,color=Class)) + scale_x_discrete(name="Mutations",limit=df$Mutations)+theme(axis.text.x = element_text(angle=45,hjust = 1,vjust = 1))

ggplot(df, aes(x=df_A$Sr.No,y=ddG))+ geom_line(y=-0.8, color="Black")+ geom_line(y=0.8, color="Black") + geom_point(aes(y=df_A$ddG.mutant.WT,shape=Class)) + geom_point(aes(y=df_A$ddG.FoldX.,shape=Class,color=Class)) + scale_x_discrete(name="Mutations",limit=df_A$Mutation)+theme(axis.text.x = element_text(angle=45,hjust = 1,vjust = 1))
ggplot(df, aes(x=df_A$Sr.No,y=ddG))+ geom_line(y=-0.8, color="Black")+ geom_line(y=0.8, color="Black") + geom_point(aes(y=df_B$ddG.mutant.WT,shape=Class)) + geom_point(aes(y=df_B$ddG.FoldX.,shape=Class,color=Class)) + scale_x_discrete(name="Mutations",limit=df_A$Mutation)+theme(axis.text.x = element_text(angle=45,hjust = 1,vjust = 1))

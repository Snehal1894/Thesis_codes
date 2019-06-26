library(bio3d)
pdb = read.pdb("C:/Users/Snehal\ Sambare/Downloads/Thesis/PDB/4j95_K659N.pdb")
inds = atom.select(pdb,chain="A")
newpdb = trim.pdb(pdb,inds)
write.pdb(newpdb,file="C:/Users/Snehal\ Sambare/Downloads/A.pdb")

#ids = c("C:/Users/Snehal\ Sambare/Downloads/2psq_B.pdb","C:/Users/Snehal\ Sambare/Downloads/2psq_A.pdb")
#pdbs = pdbaln(ids)
#seqidentity(pdbs)

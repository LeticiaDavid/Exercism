to_rna <- function(dna) {
  rna=""
  dna_string=unlist(strsplit(dna,split=NULL))
  for(i in 1:length(dna_string)){
    if (dna_string[i]=="G"){rna=paste0(rna,"C")}
    if (dna_string[i]=="C"){rna=paste0(rna,"G")}
    if (dna_string[i]=="T"){rna=paste0(rna,"A")}
    if (dna_string[i]=="A"){rna=paste0(rna,"U")}
    if (dna_string[i]!="G"&dna_string[i]!="C"&dna_string[i]!="T"&dna_string[i]!="A"){rna=errorCondition(Error)}
  }
  return(rna)
}
nucleotide_count <- function(input) {
  dna=input
  count_A=0
  count_C=0
  count_G=0
  count_T=0
  for(i in 1:nchar(dna)){
    dna_string=substr(dna,i,i)
    if (dna_string=="A"){count_A=count_A+1}
    if (dna_string=="C"){count_C=count_C+1}
    if (dna_string=="G"){count_G=count_G+1}
    if (dna_string=="T"){count_T=count_T+1}
    if (dna_string!="A"&dna_string!="C"&dna_string!="G"&dna_string!="T"&dna_string!=""){return(errorCondition(Error))}
  }
  dna_lista=list(A=count_A,C=count_C,G=count_G,T=count_T)
  return(dna_lista)
}

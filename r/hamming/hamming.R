# This is a stub function to take two strings
# and calculate the hamming distance
hamming <- function(strand1, strand2) {
  dna_string_1=unlist(strsplit(strand1,split=NULL))
  dna_string_2=unlist(strsplit(strand2,split=NULL))
  diferente=0
  tamanho=ifelse((strand1==""|strand2==""),0,max(length(dna_string_1),length(dna_string_2)))
  if(tamanho!=0){
    for(i in 1:tamanho){
      if (dna_string_1[i]!=dna_string_2[i]){
        diferente=diferente+1
      }
    }
  }
  else(
    diferente=0
  )
  return(diferente)
}

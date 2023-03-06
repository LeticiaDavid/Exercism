largest_series_product <- function(digits, span){
  maior_produto=0
  span=as.numeric(span)
  numeros=0
  produto=0
  if ((span>nchar(digits))==TRUE|grepl("[aA-zZ]",digits)|(span<0)==TRUE){return(errorCondition(Error))}
  for (i in 1:(nchar(digits)-span+1)){
    numeros=substr(digits,i,i+span-1)
    numeros=as.numeric(unlist(strsplit(as.vector(numeros),"")))
    produto=prod(numeros)
    if ((maior_produto<produto)==TRUE){
      maior_produto=produto
    }
  }
  return(maior_produto)
}
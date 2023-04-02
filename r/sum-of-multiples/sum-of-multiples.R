sum_of_multiples <- function(factors, limit) {
  if (is.null(factors)){return(0)}
  else{
    multiplo=c()
    for (i in 1:length(factors)){
      for (j in 1:(limit-1)){
        if (j%%factors[i]==0){
          multiplo=c(multiplo,j)
        }
      }
    }
    multiplo=unique(multiplo)
    multiplos=sum(multiplo)
    return(multiplos)
    }
}
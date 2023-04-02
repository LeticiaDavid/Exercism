number_type <- function(n){
  if (n<=0){return(errorCondition(Error))}
  if (n==1) {return("deficient")}
  fator=c()
  for (i in 1:(n-1)){
    if(n%%i==0){
      fator=c(fator,i)
    }
  }
  soma = sum(fator)
  if (soma==n){return("perfect")}
  if (soma>n){return("abundant")}
  if (soma<n) {return("deficient")}
}
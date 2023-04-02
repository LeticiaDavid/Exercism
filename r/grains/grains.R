square <- function(n) {
  ifelse((n<=0 | n>64 | is.null(n)),return(errorCondition(Error)),return(2^(n-1)))
}

total <- function() {
  total=0
  for(n in 1:64){
    total=total+2^(n-1)
  }
  return(total)
}
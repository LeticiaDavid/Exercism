fizz_buzz <- function(input) {
  numero=input
  vetor=c()
  for (i in 1:numero){
    if (i%%3==0&i%%5!=0){
      vetor=c(vetor,"Fizz")
    }
    if (i%%3!=0&i%%5==0){
      vetor=c(vetor,"Buzz")
    }
    if (i%%3==0&i%%5==0){
      vetor=c(vetor,"Fizz Buzz")
    }
    if (i%%3!=0&i%%5!=0){
      vetor=c(vetor,i)
    }
  }
  return(vetor)
}
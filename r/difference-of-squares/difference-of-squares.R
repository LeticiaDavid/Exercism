# this is a stub function that takes a natural_number
# and should return the difference-of-squares as described
# in the README.md
difference_of_squares <- function(natural_number) {
  quadrado_soma=0
  soma_quadrado=0
  soma=0
  for (i in 1:natural_number){
    soma=soma+i
    soma_quadrado=soma_quadrado+(i^2)
  }
  quadrado_soma=soma^2
  diferenca=quadrado_soma-soma_quadrado
  return(diferenca)
}
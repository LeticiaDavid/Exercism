scrabble_score <- function(input){
  score=0
  valor=0
  palavra=input
  palavra=tolower(palavra)
  if (nchar(palavra)==0){return(score)}
  for (i in 1:nchar(palavra)){
    letra=substr(palavra,start=i,stop=i)
    if (grepl(letra,"a|e|i|o|u|l|n|r|s|t")==TRUE){valor=1}
    if (grepl(letra,"d|g")==TRUE){valor=2}
    if (grepl(letra,"b|c|m|p")==TRUE){valor=3}
    if (grepl(letra,"f|h|v|w|y")==TRUE){valor=4}
    if (grepl(letra,"k")==TRUE){valor=5}
    if (grepl(letra,"j|x")==TRUE){valor=8}
    if (grepl(letra,"q|z")==TRUE){valor=10}
    score=score+valor
  }
  return(score)
}

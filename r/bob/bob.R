bob <- function(input) {
  frase=input
  frase=substr(frase, start = 2,stop=nchar(frase))
  frase=gsub("[0-9]","n",frase)
  frase=gsub("[,|!]","",frase)
  frase=gsub("[[:space:]]+","",frase)
  print(frase)
  diz="Whatever."
  if (grepl("[A-Z]",substr(frase,2,3))==FALSE & grepl("[?]",substr(frase,nchar(frase),nchar(frase)))==TRUE){
    diz="Sure."
    }
  if (grepl("[A-Z]",substr(frase,2,3))==TRUE & grepl("[?]",substr(frase,nchar(frase),nchar(frase)))==FALSE){
    diz="Whoa, chill out!"
    }
  if (grepl("[A-Z]",substr(frase,2,3))==TRUE & grepl("[?]",substr(frase,nchar(frase),nchar(frase)))==TRUE){
    diz="Calm down, I know what I'm doing!"
  }
  if (frase==""){
    diz="Fine. Be that way!"
  }
  return(diz)
}
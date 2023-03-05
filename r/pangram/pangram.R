is_pangram <- function(input) {
  frase=input
  frase=tolower(frase)
  letras=""
  count_letra=0
  numero=""
  count_num=0
  frase=gsub("[[:space:]]+","",frase)
  frase=gsub("[[:punct:]]+","",frase)
  for(i in 1:nchar(frase)){
    letter=substr(frase,i,i)
    if (grepl(letter,letras)==FALSE){
      if(grepl("[0-9]",letter)==TRUE){
        numero=paste0(numero,letter)
      }
      else{
        letras=paste0(letras,letter)
      }
    }
  }
  count_letra=nchar(letras)
  count_num=nchar(numero)
  ifelse((count_letra==26&count_num<11)==TRUE,return(TRUE),return(FALSE))
}
parse_phone_number <- function(number_string) {
  num_valido=FALSE
  number_string=gsub("[[:punct:]]+","",number_string)
  number_string=gsub("[a-zA-Z]","",number_string)
  number_string=gsub("[[:space:]]+","",number_string)
  if ((grepl("^1",number_string))==TRUE){
    number_string=gsub("1","",number_string)
  }
  if(nchar(number_string)==10){num_valido=TRUE}
  if ((grepl("1|0",substr(number_string, start = 1,stop=1)))|
      (grepl("1|0",substr(number_string, start = 4,stop=4)))){
    num_valido=FALSE
  }
  ifelse(num_valido==TRUE,return(number_string),return(NULL))
}
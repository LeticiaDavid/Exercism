raindrops <- function(number) {
  a=ifelse((number%%3==0),"Pling",NA)
  b=ifelse((number%%5==0),"Plang",NA)
  c=ifelse((number%%7==0),"Plong",NA)
  string=""
  string1=ifelse(!is.na(a),paste0(string,a),string)
  string2=ifelse(!is.na(b),paste0(string1,b),string1)
  string3=ifelse(!is.na(c),paste0(string2,c),string2)
  string_final=ifelse(string3=="",as.character(number),string3)
  return(string_final)
}

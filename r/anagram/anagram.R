anagram <- function(subject, candidates) {
  anagramas=c()
  candidado=""
  palavra=subject
  for (i in 1:length(candidates)){
    candidato=unlist(strsplit(candidates[i],""))
    anagrama=TRUE
    if ((nchar(candidates[i])!=nchar(subject))|(tolower(candidates[i])==tolower(subject))){
      anagrama=FALSE
    }
    else{
      for (k in 1:length(candidato)){
        if (grepl(tolower(candidato[k]),tolower(subject))==FALSE){
          anagrama=FALSE
        }
        else{
          subject=sub(candidato[k],"",subject)
        }
      }
    }
    subject=palavra
    if (anagrama==TRUE){anagramas=c(anagramas,candidates[i])} 
  }
  return(anagramas)
}
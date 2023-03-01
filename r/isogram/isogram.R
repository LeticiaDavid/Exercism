is_isogram <- function(word) {
  isogram=TRUE
  if(word==""){isogram=TRUE}
  else{
    verific=unlist(strsplit(word,split=c(NULL)))
    for (i in 1:length(verific)){
      if (verific[i]=='-'){
        word=tolower(word)
        word_lista=strsplit(word,split='-')
        break
      }
      if (verific[i]==' '){
        word=tolower(word)
        word_lista=strsplit(word,split=' ')
        break
      }
      if((verific[i]!=' ')&(verific[i]!='-')){
        word=tolower(word)
        word_lista=unlist(strsplit(word,split=c(NULL)))
      }
    }
    for(k in 1: length(word_lista[[1]])){
      if (length(word_lista[[1]])>1){
        nova_lista=unlist(strsplit(word_lista[[1]][k],split=c(NULL)))
        for (i in 1:length(nova_lista)){
          for (j in 2:length(nova_lista)){
            if (j==i){
              j=j+1
            }
            else{
              if(nova_lista[i]==nova_lista[j]){
                isogram=FALSE
                break
              }
            }
          }
        }
      }
      else{
        for (i in 1:length(word_lista)){
          for (j in 2:length(word_lista)){
            if (j==i){
              j=j+1
            }
            else{
              if(word_lista[i]==word_lista[j]){
                isogram=FALSE
                break
              }
            }
          }
        }
      }
    }
  }
  return(isogram)
}
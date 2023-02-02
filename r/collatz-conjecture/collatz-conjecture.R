collatz_step_counter <- function(num) {
  step=c()
  passo=0
  for (i in 1:length(num)){
    if(num[i]<1){
      step[i]=errorCondition(Error)
      }
    else{
      while(num[i]!=1&num[i]>1){
        num[i]=ifelse((num[i]%%2==0),(num[i]/2),(3*num[i]+1))
        passo=passo+1
      }
      step=c(step,passo)
      passo=0
    }
  }    
  return(step)
}


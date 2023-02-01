leap <- function(year) {
  leap=FALSE
  if (year%%4==0){
    if (year%%100==0 & year%%400==0){
      leap=TRUE
    }
    if (year%%100!=0 & year%%400!=0){
      leap=TRUE
    }
  }
  return(leap)
}

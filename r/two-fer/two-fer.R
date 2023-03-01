two_fer <- function(input = NA) {
  ifelse(!is.na(input) ,paste0("One for ",input,", one for me."),"One for you, one for me.")
}

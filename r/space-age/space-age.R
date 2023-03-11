space_age <- function(seconds, planet) {
  age=0
  age=ifelse(planet=="mercury",round(seconds/31557600/0.2408467,2),age)
  age=ifelse(planet=="venus",round(seconds/31557600/0.61519726,2),age)
  age=ifelse(planet=="earth",round(seconds/31557600,2),age)
  age=ifelse(planet=="mars",round(seconds/31557600/1.8808158,2),age)
  age=ifelse(planet=="jupiter",round(seconds/31557600/11.862615,2),age)
  age=ifelse(planet=="saturn",round(seconds/31557600/29.447498,2),age)
  age=ifelse(planet=="uranus",round(seconds/31557600/84.016846,2),age)
  age=ifelse(planet=="neptune",round(seconds/31557600/164.79132,2),age)
  return(age)
}


module Leap
let leapYear (year: int): bool = 
    if year%4=0 then
        if year%100=0 && year%400=0 then true
        elif year%100<>0 && year%400<>0 then true
        else false
    else false
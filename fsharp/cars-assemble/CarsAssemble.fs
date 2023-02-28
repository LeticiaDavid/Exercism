module CarsAssemble

let successRate (speed: int):  float =
    if (speed = 0) then 0.0
    elif (speed > 0 && speed < 5) then 1.0
    elif (speed > 4 && speed < 9) then 0.9
    elif (speed = 9) then 0.8
    else 0.77

let productionRatePerHour (speed: int): float = 
    if (speed = 0) then 0.0
    elif (speed > 0 && speed < 5) then 221.0 * float(speed)
    elif (speed > 4 && speed < 9)then 0.9 * 221.0 * float(speed)
    elif (speed = 9) then 0.8 * 221.0 * float(speed)
    else 0.77 * 221.0 * float(speed)
    
let workingItemsPerMinute (speed: int): int = 
    if (speed = 0) then 0
    elif (speed > 0 && speed < 5) then (221 * speed)/60
    elif (speed > 4 && speed < 9) then int(((0.9) * 221.0 * float(speed))/60.0)
    elif (speed = 9) then int(((0.8) * 221.0 * float(speed))/60.0)
    else int(((0.77) * 221.0 * float(speed))/60.0)
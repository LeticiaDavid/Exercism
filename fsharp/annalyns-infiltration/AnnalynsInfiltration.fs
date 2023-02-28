module AnnalynsInfiltration

let canFastAttack knightIsAwake = not knightIsAwake

let canSpy knightIsAwake archerIsAwake prisonerIsAwake = (knightIsAwake || archerIsAwake || prisonerIsAwake)

let canSignalPrisoner archerIsAwake prisonerIsAwake = not archerIsAwake && prisonerIsAwake

let canFreePrisoner knightIsAwake archerIsAwake prisonerIsAwake petDogIsPresent = (petDogIsPresent && not archerIsAwake) || (prisonerIsAwake && not knightIsAwake && not archerIsAwake)
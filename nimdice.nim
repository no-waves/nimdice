import random
import nimpy

randomize() # init rand

proc roll_dice(num_dice: int64, dice_sides: int): seq[int] {. exportpy .} =
    
    var unmodified =  newSeq[int](dice_sides)
    for i in 1..num_dice:
        let die = rand(1..dice_sides)
        inc unmodified[die - 1]

    return unmodified

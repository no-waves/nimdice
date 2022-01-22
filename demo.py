import nimdice

# exec time for this whole thing is about 14.5s on my system
num_dice_to_roll = 1_000_000_000 # abilli abilli abilli
dsides = 6 # d6
rolls = nimdice.roll_dice(num_dice_to_roll,dsides)
print(rolls)

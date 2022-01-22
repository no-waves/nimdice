# README

generate large n n*dx dice rolls and return a summary

np and pandas are incredibly slow at large values, so I wrote a nim lib to import

## Compilation

I've compiled with both

`nim c --threads:on --app:lib -d:release -d:danger --out:nimdice.so nimdice.nim `

and 

`nim c --threads:on --app:lib --tlsEmulation:off -d:release -d:danger --out:nimdice.pyd nimdice.nim`

so this should work on at least linux and windows

# Usage

```
import nimdice
num_dice_to_roll = 1_000_000_000
dsides = 6
rolls = nimdice.roll_dice(num_dice_to_roll,dsides)
print(rolls)
```
`[166672085, 166688019, 166682040, 166648665, 166645992, 166663199]`

`[Done] exited with code=0 in 14.509 seconds`
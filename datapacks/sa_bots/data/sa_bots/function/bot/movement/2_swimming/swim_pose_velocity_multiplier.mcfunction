scoreboard players set #multiplier sab.var 120
scoreboard players operation #x2 sab.var *= #multiplier sab.var
#(no y)
scoreboard players operation #z2 sab.var *= #multiplier sab.var
scoreboard players operation #x2 sab.var /= #100 sab.var
#(no y)
scoreboard players operation #z2 sab.var /= #100 sab.var

#Q: why didn't we apply the velocity multiplier to the y component?
#A: because minecraft has the exact same bug. we're just being consistent
# Unlocks med bay
scoreboard players remove currency Numbers 75
summon item_frame 29991 34 27 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=med_bay,tag=door] add opening
fill 29989 34 11 29987 36 11 air replace barrier

# Unlocks lab
scoreboard players remove currency Numbers 3
summon item_frame 30018 2 -17 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29985 1 34 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29993 16 17 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=lab,tag=door] add opening
fill 30004 1 -17 30004 4 -11 air replace barrier
fill 30001 1 -38 29999 3 -38 air replace barrier

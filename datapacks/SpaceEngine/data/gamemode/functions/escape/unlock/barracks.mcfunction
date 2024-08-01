# Unlocks barracks
scoreboard players remove currency Numbers 35
summon item_frame 29896 15 18 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29894 15 48 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=barracks,tag=door] add opening
fill 29906 15 29 29906 17 27 air replace barrier

# Unlocks barracks
scoreboard players remove currency Numbers 35
summon minecraft:item_frame 29896 15 18 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 29894 15 48 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=barracks,tag=door] add opening
fill 29906 15 29 29906 17 27 minecraft:air replace minecraft:barrier

return 1
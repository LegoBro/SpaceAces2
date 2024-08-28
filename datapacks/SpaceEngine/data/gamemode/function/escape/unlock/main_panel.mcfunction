# Unlocks main panel
scoreboard players remove currency Numbers 100
summon minecraft:item_frame 29952 48 -4 {Facing:0,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
summon minecraft:item_frame 29923 36 -4 {Facing:1,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=main_panel,tag=door] add opening
fill 29977 35 -1 29977 39 -7 minecraft:air replace minecraft:barrier

return 1
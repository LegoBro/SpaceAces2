# Unlocks main panel
scoreboard players remove currency Numbers 100
summon item_frame 29952 48 -4 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
summon item_frame 29923 36 -4 {Facing:1b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=main_panel,tag=door] add opening
fill 29977 35 -1 29977 39 -7 air replace minecraft:barrier

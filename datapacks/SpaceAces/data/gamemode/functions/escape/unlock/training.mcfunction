# Unlocks hall1
scoreboard players remove currency Numbers 50
summon item_frame 30007 21 -6 {Facing:0b,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",Count:1b},Invulnerable:1b}
tag @e[tag=training,tag=door] add opening
fill 29999 15 -39 29999 17 -37 air replace barrier

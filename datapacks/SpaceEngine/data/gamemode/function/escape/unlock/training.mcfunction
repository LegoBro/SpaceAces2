# Unlocks hall1
scoreboard players remove currency Numbers 50
summon minecraft:item_frame 30007 21 -6 {Facing:0,Tags:["entry","active","spawner"],Item:{id:"minecraft:light_gray_dye",count:1},Invulnerable:1b}
tag @e[tag=training,tag=door] add opening
fill 29999 15 -39 29999 17 -37 minecraft:air replace minecraft:barrier

return 1
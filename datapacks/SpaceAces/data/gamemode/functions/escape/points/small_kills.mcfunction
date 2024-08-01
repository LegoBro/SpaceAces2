## Kills into points

playsound block.note_block.bit master @a ~ ~ ~ 1 2 1

execute if score escape.kills Numbers matches 1.. run scoreboard players add escape.points Numbers 100
execute if score escape.kills Numbers matches 1.. run scoreboard players remove escape.kills Numbers 1
execute if score escape.kills Numbers matches 1.. run schedule function gamemode:escape/points/small_kills 3t

execute unless score escape.kills Numbers matches 1.. run schedule function gamemode:escape/points/big_heals 50t

title @a[tag=escape] subtitle [{"text":"Kills: ","color":"dark_red"},{"score":{"name":"escape.kills","objective":"Numbers"},"color":"red"}]
title @a[tag=escape] title [{"text":"Points: ","color":"blue"},{"score":{"name":"escape.points","objective":"Numbers"},"color":"green"}]

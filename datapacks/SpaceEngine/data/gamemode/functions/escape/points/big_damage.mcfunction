## Kills into points

playsound block.note_block.bit master @a ~ ~ ~ 1 0 1
execute if score escape.damage Numbers matches 20.. run scoreboard players remove escape.points Numbers 10
execute if score escape.damage Numbers matches 20.. run scoreboard players remove escape.damage Numbers 20
execute if score escape.damage Numbers matches 20.. run schedule function gamemode:escape/points/big_damage 2t
execute if score escape.damage Numbers matches 0..19 run schedule function gamemode:escape/points/small_damage 2t
#execute unless score escape.damage Numbers matches 0.. run schedule function gamemode:reset 50t

title @a[tag=escape] subtitle [{"text":"Damage Taken: ","color":"dark_red"},{"score":{"name":"escape.damage","objective":"Numbers"},"color":"red"}]
title @a[tag=escape] title [{"text":"Points: ","color":"blue"},{"score":{"name":"escape.points","objective":"Numbers"},"color":"green"}]

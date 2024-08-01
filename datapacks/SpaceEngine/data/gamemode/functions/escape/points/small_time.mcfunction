## time into points

playsound block.note_block.bit master @a ~ ~ ~ 1 1.5 1


execute if score escape.time Numbers matches 1.. run scoreboard players add escape.points Numbers 1
execute if score escape.time Numbers matches 1.. run scoreboard players remove escape.time Numbers 1
execute if score escape.time Numbers matches 1.. run schedule function gamemode:escape/points/small_time 1t

execute unless score escape.time Numbers matches 1.. run schedule function gamemode:escape/points/big_kills 50t

title @a[tag=escape] subtitle [{"text":"Time Bonus: ","color":"dark_red"},{"score":{"name":"escape.time","objective":"Numbers"},"color":"red"}]
title @a[tag=escape] title [{"text":"Points: ","color":"blue"},{"score":{"name":"escape.points","objective":"Numbers"},"color":"green"}]

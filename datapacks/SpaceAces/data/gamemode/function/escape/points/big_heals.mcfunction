## Kills into points

playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 1.5 1
execute if score escape.heals Numbers matches 25.. run scoreboard players add escape.points Numbers 25
execute if score escape.heals Numbers matches 25.. run scoreboard players remove escape.heals Numbers 25
execute if score escape.heals Numbers matches 25.. run schedule function gamemode:escape/points/big_heals 1t
execute if score escape.heals Numbers matches 0..24 run schedule function gamemode:escape/points/small_heals 1t
#execute unless score escape.heals Numbers matches 0.. run schedule function gamemode:escape/points/damage 50t

title @a[tag=escape] subtitle [{"text":"Healing: ",color:"dark_red","type":"text"},{"score":{"name":"escape.heals","objective":"Numbers"},color:"red","type":"score"}]
title @a[tag=escape] title [{"text":"Points: ",color:"blue","type":"text"},{"score":{"name":"escape.points","objective":"Numbers"},color:"green","type":"score"}]

return 1
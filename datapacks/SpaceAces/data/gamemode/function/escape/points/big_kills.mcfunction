## Kills into points

playsound minecraft:block.note_block.bit master @a ~ ~ ~ 1 2 1

execute if score escape.kills Numbers matches 10.. run scoreboard players add escape.points Numbers 1000
execute if score escape.kills Numbers matches 10.. run scoreboard players remove escape.kills Numbers 10
execute if score escape.kills Numbers matches 10.. run schedule function gamemode:escape/points/big_kills 3t
execute if score escape.kills Numbers matches 0..9 run schedule function gamemode:escape/points/small_kills 3t


#execute unless score escape.kills Numbers matches 0.. run schedule function gamemode:escape/points/heals 50t

title @a[tag=escape] subtitle [{"text":"Kills: ",color:"dark_red","type":"text"},{"score":{"name":"escape.kills","objective":"Numbers"},color:"red","type":"score"}]
title @a[tag=escape] title [{"text":"Points: ",color:"blue","type":"text"},{"score":{"name":"escape.points","objective":"Numbers"},color:"green","type":"score"}]

return 1
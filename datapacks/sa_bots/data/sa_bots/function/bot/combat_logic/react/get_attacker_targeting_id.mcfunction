#executed by the player that damaged our bot


#record our uuid
execute store result score #get_uuid4_0 sab.var run data get entity @s UUID[0]
execute store result score #get_uuid4_1 sab.var run data get entity @s UUID[1]
execute store result score #get_uuid4_2 sab.var run data get entity @s UUID[2]
execute store result score #get_uuid4_3 sab.var run data get entity @s UUID[3]

#record targeting id
scoreboard players operation #get_id sab.var = @s id
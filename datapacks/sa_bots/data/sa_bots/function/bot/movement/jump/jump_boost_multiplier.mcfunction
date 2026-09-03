#read jump boost
scoreboard players set #var sab.var -1
execute store result score #var sab.var run data get entity @s active_effects[{id:"minecraft:jump_boost"}].amplifier

#add 10 velocity for every level of jump boost
scoreboard players add #var sab.var 1
scoreboard players operation #var sab.var *= #10 sab.var
scoreboard players operation #velocity sab.var += #var sab.var
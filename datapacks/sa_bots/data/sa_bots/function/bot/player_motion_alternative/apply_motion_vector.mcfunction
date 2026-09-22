#executed by a bot


#get motion vector
$execute positioned ^ ^ ^$(strength) if loaded ~ ~ ~ run tp e-0-0-0-1 ~ ~ ~
execute store result score #x sab.var run data get entity @s Pos[0] 100000
execute store result score #y sab.var run data get entity @s Pos[1] 100000
execute store result score #z sab.var run data get entity @s Pos[2] 100000
execute store result score #x2 sab.var run data get entity e-0-0-0-1 Pos[0] 100000
execute store result score #y2 sab.var run data get entity e-0-0-0-1 Pos[1] 100000
execute store result score #z2 sab.var run data get entity e-0-0-0-1 Pos[2] 100000
scoreboard players operation #x2 sab.var -= #x sab.var
scoreboard players operation #y2 sab.var -= #y sab.var
scoreboard players operation #z2 sab.var -= #z sab.var

#apply force towards the target
#x
execute store result score #var sab.var run data get entity @s Motion[0] 10000
scoreboard players operation #var sab.var += #x2 sab.var
execute store result entity @s Motion[0] double 0.0001 run scoreboard players get #var sab.var
#y
execute store result score #var sab.var run data get entity @s Motion[1] 10000
scoreboard players operation #var sab.var += #y2 sab.var
execute store result entity @s Motion[1] double 0.0001 run scoreboard players get #var sab.var
#z
execute store result score #var sab.var run data get entity @s Motion[2] 10000
scoreboard players operation #var sab.var += #z2 sab.var
execute store result entity @s Motion[2] double 0.0001 run scoreboard players get #var sab.var

#clean-up
tp e-0-0-0-1 0 0 0
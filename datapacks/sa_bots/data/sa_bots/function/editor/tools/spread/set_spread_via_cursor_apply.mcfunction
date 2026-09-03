#executed by the node that we want to set spread on


#get our coordinates
execute store result score #x2 sab.var run data get entity @s Pos[0] 1
execute store result score #z2 sab.var run data get entity @s Pos[2] 1

#find difference
scoreboard players operation #x sab.var -= #x2 sab.var
execute if score #x sab.var matches ..-1 run scoreboard players operation #x sab.var *= #-1 sab.var
scoreboard players operation #z sab.var -= #z2 sab.var
execute if score #z sab.var matches ..-1 run scoreboard players operation #z sab.var *= #-1 sab.var
#reject if x or y are exceedingly large
execute if score #x sab.var matches 20.. run return fail
execute if score #z sab.var matches 20.. run return fail
#=====
#clamp in range 0-10
execute if score #x sab.var matches 11.. run scoreboard players set #x sab.var 10
execute if score #z sab.var matches 11.. run scoreboard players set #z sab.var 10

#new spread is difference
data modify entity @s data.spread set value [0,0]
execute store result entity @s data.spread[0] int 1 run scoreboard players get #x sab.var
execute store result entity @s data.spread[1] int 1 run scoreboard players get #z sab.var


#we exist
scoreboard players set #success sab.var 1
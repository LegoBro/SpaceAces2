#executed by target waypoint


#read data
$execute store result score #set sab.var run data get entity @s data.spread[$(index)]

#add or remove
$scoreboard players $(operation) #set sab.var 1
#keep in bounds
execute if score #set sab.var matches 11.. run scoreboard players set #set sab.var 0
execute if score #set sab.var matches ..-1 run scoreboard players set #set sab.var 10

#store it again
$execute store result entity @s data.spread[$(index)] int 1 run scoreboard players get #set sab.var
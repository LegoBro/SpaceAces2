#executed by target waypoint

#write down our coordinates so we can compare them
execute store result score #waypoint_x2 sab.var run data get entity @s Pos[0]
execute store result score #waypoint_y2 sab.var run data get entity @s Pos[1]
execute store result score #waypoint_z2 sab.var run data get entity @s Pos[2]

#we exist
scoreboard players set #success sab.var 1
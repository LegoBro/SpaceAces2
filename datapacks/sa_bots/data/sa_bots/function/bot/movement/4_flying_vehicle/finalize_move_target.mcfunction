#executed as e-0-0-0-2
#executed at location of bot entity


#get y position before normalizing
execute store result score #target_y sab.var run data get entity @s Pos[1] 10

#normalize vector
execute facing entity @s feet positioned ^ ^ ^0.001 if loaded ~ ~ ~ run tp @s ~ ~ ~ ~ ~


#grab coordinates after being moved
execute store result score #x2 sab.var run data get entity @s Pos[0] 100000
execute store result score #y2 sab.var run data get entity @s Pos[1] 100000
execute store result score #z2 sab.var run data get entity @s Pos[2] 100000

#grab rotation
execute store result score #rotation sab.var run data get entity @s Rotation[0] 1

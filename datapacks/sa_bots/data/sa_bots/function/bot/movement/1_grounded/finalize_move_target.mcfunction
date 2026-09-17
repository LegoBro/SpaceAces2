#executed as f-0-0-0-1


#normalize vector
execute facing entity @s eyes rotated ~ 0 positioned ^ ^ ^0.001 if loaded ~ ~ ~ run tp @s ~ ~ ~ ~ ~


#grab coordinates after being moved
execute store result score #x2 sab.var run data get entity @s Pos[0] 100000
#(no y, here)
execute store result score #z2 sab.var run data get entity @s Pos[2] 100000

#grab rotation
execute store result score #rotation sab.var run data get entity @s Rotation[0] 1
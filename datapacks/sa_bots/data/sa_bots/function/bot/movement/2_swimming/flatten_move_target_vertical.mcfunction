#executed as e-0-0-0-2

#normalize vector
execute facing entity @s eyes rotated ~ 0 positioned ^ ^ ^0.0035 if loaded ~ ~ ~ run tp @s ~ ~ ~


#grab coordinates after being moved
execute store result score #x2 sab.var run data get entity @s Pos[0] 100000
execute store result score #y2 sab.var run data get entity @s Pos[1] 100000
execute store result score #z2 sab.var run data get entity @s Pos[2] 100000
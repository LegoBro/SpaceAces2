#executed as f-0-0-0-1

#normalize vector
$execute facing entity @s feet rotated ~$(rotation) ~ positioned ^ ^ ^0.0042 if loaded ~ ~ ~ run tp @s ~ ~ ~ ~ ~

#go straight up if we want to exit the water
execute rotated as @s rotated ~ 0 unless block ^ ^ ^.6 #sa_bots:not_solid if block ^ ^2 ^.6 #sa_bots:not_solid \
    rotated ~ -80 positioned ^ ^ ^0.0042 if loaded ~ ~ ~ run tp @s ~ ~ ~ ~ ~


#grab coordinates after being moved
execute store result score #x2 sab.var run data get entity @s Pos[0] 100000
execute store result score #y2 sab.var run data get entity @s Pos[1] 100000
execute store result score #z2 sab.var run data get entity @s Pos[2] 100000

#grab rotation
execute store result score #rotation sab.var run data get entity @s Rotation[0] 1
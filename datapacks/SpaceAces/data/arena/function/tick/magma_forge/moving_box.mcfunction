#Executed by moving box (happy_ghast)
#Executed at the position of the happy_ghast


#Push away players
execute as @e[type=#projectile:players,tag=hb,distance=..4,gamemode=!creative] at @s facing entity @n[type=happy_ghast] feet run function player_motion:api/launch_looking

#Move depending on tag
execute if entity @s[tag=arena.magma_forge.moving_box_west] at @s run tp @s ~-0.5 ~ ~
execute if entity @s[tag=arena.magma_forge.moving_box_up] at @s run tp @s ~ ~0.5 ~
execute if entity @s[tag=arena.magma_forge.moving_box_east] at @s run tp @s ~0.5 ~ ~
execute if entity @s[tag=arena.magma_forge.moving_box_down] at @s run tp @s ~ ~-0.5 ~
execute if entity @s[tag=arena.magma_forge.moving_box_north] at @s run tp @s ~ ~ ~-0.5
execute if entity @s[tag=arena.magma_forge.moving_box_south] at @s run tp @s ~ ~ ~0.5

#Manipulate waypoints to scare bots so they don't stand in our way
execute if entity @s[tag=arena.magma_forge.moving_box_scares_bots.west] positioned ~-30 ~-2 ~-2 run \
    tag @e[type=marker,tag=sab.botWaypointGeneric,dx=40,dy=10,dz=4] remove sab.avoidWaypoint
execute if entity @s[tag=arena.magma_forge.moving_box_scares_bots.west] positioned ~-30 ~-2 ~-2 run \
    tag @e[type=marker,tag=sab.botWaypointGeneric,dx=35,dy=10,dz=4] add sab.avoidWaypoint

#Delete self when out of bounds
execute positioned 13311 102 0 run kill @s[distance=150..]

#Set players on fire
scoreboard players add @e[type=#projectile:players,tag=hb,distance=..4,scores={fire=..17}] fire 3

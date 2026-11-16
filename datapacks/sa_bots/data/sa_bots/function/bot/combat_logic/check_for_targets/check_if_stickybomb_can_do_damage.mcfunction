#executed by a sticky bomb that was spawned by a bot


#we exist
scoreboard players add #check_deployables sab.var 1

#log if there's an enemy player or deployable nearby that we could deal damage to
execute at @s as @e[type=#projectile:has_hb,tag=hb,distance=..3] unless score @s Team = #team sab.var run scoreboard players add #check_deployables sab.var 1000

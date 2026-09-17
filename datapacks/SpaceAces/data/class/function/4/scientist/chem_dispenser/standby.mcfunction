scoreboard players add @s i 1
scoreboard players operation #target_team Numbers = @s Team
scoreboard players operation #target_owner Numbers = @s id

execute as @e[type=#projectile:players,tag=hb] if score @s id = #target_owner Numbers run tag @s add target.owner

execute if entity @s[tag=!reload_mode] run function class:4/scientist/chem_dispenser/heal_mode
execute if entity @s[tag=reload_mode] run function class:4/scientist/chem_dispenser/reload_mode

execute unless entity @e[tag=target.owner,scores={Class=10}] run kill @s

tag @e[type=#projectile:players,tag=hb] remove target.owner
tag @e[type=#projectile:players,tag=hb] remove class.target
return 1
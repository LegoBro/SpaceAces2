scoreboard players add @s i 1
scoreboard players operation #target_team Numbers = @s Team
scoreboard players operation #target_owner Numbers = @s id

execute as @a if score @s id = #target_owner Numbers run tag @s add target.owner

execute if entity @s[tag=!reload_mode] run function class:4/scientist/chem_dispenser/heal_mode
execute if entity @s[tag=reload_mode] run function class:4/scientist/chem_dispenser/reload_mode

execute unless entity @e[tag=target.owner,scores={Class=10}] run kill @s

tag @a remove target.owner
tag @a remove class.target
return 1
scoreboard players add @s i 1


#execute if score @s i matches 2 run function class:4/scientist/chem_dispenser/visuals
execute if score @s i matches 22 run item replace entity @s container.0 with stone[item_model="class/scientist/chem_machine/full"]
execute if score @s i matches ..22 run return 0

scoreboard players operation #target_team Numbers = @s Team
scoreboard players operation #target_owner Numbers = @s owner

execute as @e[type=#projectile:players,tag=hb] if score @s id = #target_owner Numbers run tag @s add target.owner

execute if entity @s[tag=!reload_mode] run function class:4/scientist/chem_dispenser/heal_mode
execute if entity @s[tag=reload_mode] run function class:4/scientist/chem_dispenser/reload_mode

execute unless entity @e[tag=target.owner,scores={Class=10}] run function class:4/scientist/chem_dispenser/death

tag @e[type=#projectile:players,tag=hb] remove target.owner
tag @e[type=#projectile:players,tag=hb] remove class.target

execute if entity @s[tag=kill_trigger] run function class:4/scientist/chem_dispenser/death

return 1
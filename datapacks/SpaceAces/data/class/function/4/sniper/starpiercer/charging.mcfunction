## Charging
scoreboard players operation @s ability.1.cooldown -= class.sniper.1.charge_speed Numbers
execute if score @s ultimate.cooldown matches 1.. run scoreboard players operation @s ability.1.cooldown -= class.sniper.1.charge_speed Numbers

# Overflow fix
execute if score @s ability.1.cooldown < class.sniper.1.maxDamage Numbers run scoreboard players operation @s ability.1.cooldown = class.sniper.1.maxDamage Numbers



attribute @s[scores={ability.1.cooldown=..-1}] jump_strength modifier add class.sniper.scope -1000 add_multiplied_base

execute if score @s SelectedItem matches 1 if score @s ability.1.cooldown matches ..-15 if entity @s[tag=input.jump] run function class:4/sniper/starpiercer/shoot
function class:4/sniper/jump/reset
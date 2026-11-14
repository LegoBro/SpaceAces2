## Charging
scoreboard players operation @s ability.1.cooldown -= class.sniper.1.charge_speed Numbers
execute if score @s ultimate.cooldown matches 1.. run scoreboard players operation @s ability.1.cooldown -= class.sniper.1.charge_speed Numbers

# Overflow fix
execute if score @s ability.1.cooldown < class.sniper.1.maxDamage Numbers run scoreboard players operation @s ability.1.cooldown = class.sniper.1.maxDamage Numbers



attribute @s[scores={ability.1.cooldown=..-1}] jump_strength modifier add class.sniper.scope -1000 add_multiplied_base

execute if score @s SelectedItem matches 1 if score @s ability.1.cooldown matches ..-15 if entity @s[tag=input.jump] run function class:4/sniper/starpiercer/shoot
function class:4/sniper/jump/reset

#execute if score @s ability.1.cooldown matches 0 run title @s subtitle ""

scoreboard players operation #charge Numbers = @s ability.1.cooldown
scoreboard players operation #charge Numbers *= 5 Numbers

scoreboard players operation #charge Numbers /= class.sniper.1.maxDamage Numbers


execute if score #charge Numbers matches ..0 run title @s subtitle [{text:"",color:green},{text:"|||||",color:black}]
execute if score #charge Numbers matches 1 run title @s subtitle [{text:"|",color:green},{text:"||||",color:black}]
execute if score #charge Numbers matches 2 run title @s subtitle [{text:"||",color:green},{text:"|||",color:black}]
execute if score #charge Numbers matches 3 run title @s subtitle [{text:"|||",color:green},{text:"||",color:black}]
execute if score #charge Numbers matches 4 run title @s subtitle [{text:"||||",color:green},{text:"|",color:black}]
execute if score #charge Numbers matches 5.. run title @s subtitle [{text:"|||||",color:green}]
title @s times 0 15 0
title @s title ""

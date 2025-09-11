## Pathfinder (bomber) Main Tick:

## Removes sticky owner
tag @e[tag=class.bomber.sticky_owned] remove class.bomber.sticky_owned

# Primary: Plasma Grenade Launcher

execute if entity @s[tag=!class.bomber.sticky_mode] run function class:4/bomber/primary/main
execute if entity @s[tag=class.bomber.sticky_mode] run function class:4/bomber/sticky_bomb/main


# 1st Ability: Detonate
function class:4/bomber/detonator/locate
execute if score @s ability.1.cooldown matches 1.. run function class:4/bomber/detonator/ready
execute if score @s ability.1.cooldown matches ..0 run function class:4/bomber/detonator/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/bomber/toggle/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/bomber/toggle/cooldown

# Ultimate Ability: Blast Zone
execute if score @s ultimate_charge >= class.bomber.ultimate.charge Numbers run function class:4/bomber/blast_zone/ready
execute unless score @s ultimate_charge >= class.bomber.ultimate.charge Numbers run function class:4/bomber/blast_zone/cooldown

## Melee
execute unless score @s melee.cooldown matches 1.. if entity @s[tag=input.swap_hands] run function class:4/helper/punch



return 1
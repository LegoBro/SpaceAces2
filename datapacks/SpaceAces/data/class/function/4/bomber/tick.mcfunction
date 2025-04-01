## Pathfinder (bomber) Main Tick:

# Primary: Plasma Grenade Launcher

execute if entity @s[tag=!class.bomber.sticky_mode] run function class:4/bomber/primary/main
execute if entity @s[tag=class.bomber.sticky_mode] run function class:4/bomber/sticky_bomb/main


# 1st Ability: Detonate
execute if score @s ability.1.cooldown matches ..0 run function class:4/bomber/detonator/ready
execute if score @s ability.1.cooldown matches 1.. run function class:4/bomber/detonator/cooldown

# 2nd Ability: Toggle
execute if score @s ability.2.cooldown matches ..0 run function class:4/bomber/toggle/ready
execute if score @s ability.2.cooldown matches 1.. run function class:4/bomber/toggle/cooldown



# Passive: Bomb Voyage



return 1